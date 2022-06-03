import React from "react";
import Pdf from "react-to-pdf";

class TestPdf extends React.Component{

    constructor(props){
        super(props)
    }


    render(){
        const ref = React.createRef();
        return(
            <div>
                 <Pdf targetRef={ref} filename="code-example.pdf">
                    {({ toPdf }) => <button onClick={toPdf}>Generate Pdf</button>}
                </Pdf>
                <div ref={ref}>
                    <h1>Hello CodeSandbox</h1>
                    <h2>Start editing to see some magic happen!</h2>
                </div>
            </div>
        )
    }

}


export default TestPdf;