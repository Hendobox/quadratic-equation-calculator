pragma solidity ^0.5.9;
contract QuadraticSolver{
        function sqrt(uint256 x, uint256 r) public pure returns (uint128) {
    if (x == 0) return 0;
    else {
      require (r > 0,"R must be greater than 0");
      while (true) {
        uint256 rr = x / r;
        if (r == rr || r + 1 == rr) return uint128 (r);
        else if (r == rr + 1) return uint128 (rr);
        r = r + rr + 1 >> 1;
      }
    }
    

      function positive(uint256 a,uint256 b,uint256 c) public pure returns(uint256){
        uint root = sqrt((b**2) - (4*a*c/2*a));
        return -b + root
      }
      function negative(uint256 a,uint256 b,uint256 c) public pure returns(uint256){
         uint root = sqrt((b**2) - (4*a*c/2*a));
        return -b - root;
      }  
   }
