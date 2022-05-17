function SignUp(){
    return(
        <div id="signup">
        <div className="box">
            <h1 className='titles'>Sign Up</h1>
            <form className='forms'>
                <input type="text" className='inputs' placeholder="Username"/>
                <input type="text" className='inputs' placeholder="Password"/>
                <input type="text" className='inputs' placeholder="Re-enter Password"/>
                <input type="submit" className="inputsubmitbtn" value="Sign Up" />
            </form>
            <p className='logintext'>Already have an account? <a href="/login">Login</a></p>
        </div>
    </div>
    );
}

export default SignUp;