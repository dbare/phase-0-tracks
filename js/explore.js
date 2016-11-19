// Define a function for reversing a string (takes a string as parameter)
function reverseString(str) {
    // Use the split method to return an array
    var splitString = str.split(""); 
 
    // Use the reverse method to reverse the array
    var reverseArray = splitString.reverse();
 
    // Use the join method to join all letters of array into a string
    var joinArray = reverseArray.join("");
    
    //Return the reversed string
    return joinArray;
}
reverseString("hello");