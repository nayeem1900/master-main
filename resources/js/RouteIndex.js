import React from 'react';
import { Routes, Route } from 'react-router-dom'
import Dashboard from './components/Dashboard';
import TestPdf from './components/pdf/TestPdf';
import Test from './components/Test';
import UserList from './components/user/UserList';
import UserPermission from './components/user/UserPermission';
import RolePermission from './components/user/RolePermission';

class RouteIndex extends React.Component{

    render() {
        return (
            <Routes>
                <Route exact path="/" element={<Dashboard/>}></Route>
                <Route path="/contact" element={<Test/>}></Route>
                <Route path="/test_pdf" element={<TestPdf/>}></Route>
                <Route path="/activity" element={<TestPdf/>}></Route>
                <Route path="/menu" element={<TestPdf/>}></Route>
                <Route path="/userList" element={<UserList/>}></Route>
                <Route path="/userPermission" element={<UserPermission/>}></Route>
                <Route path="/rolePermission" element={<RolePermission/>}></Route>
                <Route path="/role" element={<TestPdf/>}></Route>
                
            </Routes>
        )
    }

}


export default RouteIndex;
