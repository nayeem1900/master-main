import React from 'react';
import ReactDOM from 'react-dom';
import {
  BrowserRouter,
  NavLink
} from "react-router-dom";
import RouteIndex from '../RouteIndex';
import axios from 'axios';

class Index extends React.Component {


    constructor(props) {
        super(props);
        this.state = {
            menus:[],
            
        }
        
    }


    componentDidMount(){

        
        
        var _this = this;
        axios.get('/api/menus')
        .then(function (response) {
            console.table(response);
            _this.setState({menus:response.data});

        })
        .catch(function (error) {
            // handle error
            console.log(error);
        })
        .then(function () {
            // always executed
            console.log('done');
        });

    }


    render(){
        return (
            <BrowserRouter basename='reavel/home'>
                <nav className="main-header navbar navbar-expand navbar-white navbar-light">
                    <ul className="navbar-nav">
                        <li className="nav-item">
                            <NavLink className="nav-link" data-widget="pushmenu" to="/" role="button"><i className="fas fa-bars"></i></NavLink>
                        </li>
                        <li className="nav-item d-none d-sm-inline-block">
                            <NavLink to="/" className="nav-link">Home</NavLink>
                        </li>
                        <li className="nav-item d-none d-sm-inline-block">
                            <NavLink to="/contact" className="nav-link">Contact</NavLink>
                        </li>
                    </ul>
                </nav>


                <section className="main-sidebar sidebar-light-primary elevation-1">

                    <div>
                        <NavLink to="index3.html" className="brand-link btn-block" style={{float: "left"}}>
                            <img src="backend/assets/img/1592631338LOGO.png" alt="AdminLTE Logo" className="brand-image" />
                        </NavLink>
                    </div>


                    <div className="sidebar">

                        <div className="form-inline  mt-3">
                            <div className="input-group" data-widget="sidebar-search">
                                <input className="form-control form-control-sidebar" type="search" placeholder="Search"
                                    aria-label="Search" />
                                <div className="input-group-append">
                                    <button className="btn btn-sidebar">
                                        <i className="fas fa-search fa-fw"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <nav className="mt-2">
                            <ul className="nav nav-pills nav-sidebar flex-column nav-flat nav-legacy nav-compact" data-widget="treeview" role="menu" data-accordion="false">
                                <li className="nav-item">
                                    <NavLink exact to="/" className="nav-link">
                                        <i className="nav-icon fas fa-tachometer-alt"></i>
                                        <p>Dashboard</p>
                                    </NavLink>
                                </li>
                                
                                {this.state.menus.map(( menu, index) => ( 
                                    <li className="nav-item" key={++index}>
                                        <NavLink to="#" className="nav-link parent_nav_link">
                                            <i className="nav-icon fas fa-copy"></i>
                                            <p>
                                                { menu.name }
                                                <i className="fas fa-angle-left right"></i>
                                            </p>
                                        </NavLink>
                                        
                                        <ul className="nav nav-treeview">
                                            { menu.parents.map((child, indeKey) => ( 
                                                <li className="nav-item" key={++indeKey}>
                                                    <NavLink key={child.slug} to={child.slug} className="nav-link">
                                                        <i className="far fa-circle nav-icon"></i>
                                                        <p>{ child.name }</p>
                                                    </NavLink>
                                                </li>
                                            ))}
                                        </ul>
                                    </li>
                                ))}

                            </ul>
                        </nav>
                    </div>

                </section>

                <div className="content-wrapper">
                    <RouteIndex/>
                </div>
            </BrowserRouter>        
        )
    };
}

export default Index;

if (document.getElementById('root')) {
    ReactDOM.render(<Index />, document.getElementById('root'));
}
