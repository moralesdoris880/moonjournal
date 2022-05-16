
function Login(){
    return (
        <div id="login">
            <img src={require('../media/phone.png')} id="phone"></img>
            <div className="box">
                <h1 className='titles'>Log In</h1>
                <p>Don't have an account? <a href="/signup">Sign up</a> for free.</p>
                <form>
                    <label>Username: </label>
                    <input type="text" id="fname" name="fname" value="username"/>
                    <label>Password:</label>
                    <input type="text" id="lname" name="lname" value="password"/>
                    <input type="submit" value="Log In" />
                </form>
            </div>
        </div>
    );
}

export default Login;

// /Users/dorismorales/Projects/moonjournal/client/public/media/phone.png