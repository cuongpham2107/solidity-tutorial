const { expect } = require("chai");
const { ethers } = require("hardhat");
const {
    loadFixture,
  } = require("@nomicfoundation/hardhat-toolbox/network-helpers");

describe("Token contract", function () {
  it("Triển khai nên gán tổng nguồn cung mã thông báo cho chủ sở hữu", async function () {
    const [owner] = await ethers.getSigners();// array các địa chỉ các accont
    const Token = await ethers.getContractFactory("Floppy")
    const hardhatToken = await Token.deploy();//deploy

    const ownerBalance = await hardhatToken.balanceOf(owner.address);
    expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);
  });



  it("Nên chuyển mã thông báo giữa các tài khoản", async function() {
    const [owner, addr1, addr2] = await ethers.getSigners();

    const hardhatToken = await ethers.deployContract("Floppy");

    // Chuyển 50 token owner cho addr1
    await hardhatToken.transfer(addr1.address, 50);
    expect(await hardhatToken.balanceOf(addr1.address)).to.equal(50);

     // Chuyển 50 token owner cho addr1 cho addr2
    await hardhatToken.connect(addr1).transfer(addr2.address, 50);
    expect(await hardhatToken.balanceOf(addr2.address)).to.equal(50);
  });


  //Khi thực hiện một test case mới thì phải gọi lại deployTokenFixture để rest lại 
  async function deployTokenFixture() {
    const [owner, addr1, addr2] = await ethers.getSigners();

    const hardhatToken = await ethers.deployContract("Floppy");

    // Đồ đạc có thể trả về bất cứ thứ gì bạn cho là hữu ích cho các bài kiểm tra của mình
    return { hardhatToken, owner, addr1, addr2 };
  }
  it("Nên chỉ định tổng nguồn cung mã thông báo cho chủ sở hữu", async function () {
    const { hardhatToken, owner } = await loadFixture(deployTokenFixture);

    const ownerBalance = await hardhatToken.balanceOf(owner.address);
    expect(await hardhatToken.totalSupply()).to.equal(ownerBalance);
  });

  // it("Nên chuyển mã thông báo giữa các tài khoản", async function () {
  //   const { hardhatToken, owner, addr1, addr2 } = await loadFixture(
  //     deployTokenFixture
  //   );

  //  //Chuyển 50 token owner cho addr1
  //   await expect(
  //     hardhatToken.transfer(addr1.address, 50)
  //   ).to.changeTokenBalances(hardhatToken, [owner, addr1], [-50, 50]);

    
  //   //Chuyển 50 token addr1 cho addr2
  //   // Chúng tôi sử dụng .connect (người ký) để gửi giao dịch từ một tài khoản khác
  //   await expect(
  //     hardhatToken.connect(addr1).transfer(addr2.address, 50)
  //   ).to.changeTokenBalances(hardhatToken, [addr1, addr2], [-50, 50]);
  // });




});




