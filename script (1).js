function isStrongPassword(password) {
   
   
    if (password.length < 8) {
        return false;
    }
   
   
    if (password.includes("password")) {
        return false;
    }
   
   
    if (password === password.toLowerCase()) {
        return false;
    }
   
   
    return true;
}
