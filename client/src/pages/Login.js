
function Login(){
    return (
        <div id="login">
            <div className="box">
                <h1 className='titles'>Log In</h1>
                <p className='logintext'>Don't have an account? <a href="/signup">Sign up</a> for free.</p>
                <form className='forms'>
                    <input type="text" className='inputs' placeholder="Username"/>
                    <input type="text" className='inputs' placeholder="Password"/>
                    <input type="submit" className="inputsubmitbtn" value="Log In" />
                </form>
            </div>
        </div>
    );
}

export default Login;

// /Users/dorismorales/Projects/moonjournal/client/public/media/phone.png