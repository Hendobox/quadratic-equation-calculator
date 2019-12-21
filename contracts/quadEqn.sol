pragma solidity 0.5.1;
    
contract QuadraticEquation {
    
    function squartRoot(int x) public pure returns (int) {
        int y = x;
        while(true) {
            int z = (y + (x/y))/2;
            int w = (z + (x/z))/2;

            if( w == y) {
                if( w < y ) return w;
                else return y;
            }
            y = w;
        }
    }
    
    function factor1(int a, int b, int c) public pure returns (int) {
        int root = squartRoot((b^2) - (4*a*c));
        return (-b + root)/(2*a);
    }  
    
    function factor2(int a, int b, int c) public pure returns (int) {
        int root = squartRoot((b^2) - (4*a*c));
        return (-b - root)/(2*a);
    } 
}
