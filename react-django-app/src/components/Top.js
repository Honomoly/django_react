import React from 'react';
import { Link, Routes, Route } from 'react-router-dom';
import Home from './Home';
import BookList from './BookList';
import BookDetailView from './BookDetailView';
import BookInsert from './BookInsert';
import BookUpdate from './BookUpdate';
import BookSearch from './BookSearch';
import ChartDB from './ChartDB'
import Chart from './Chart'
import Upload from './Upload';
import UploadResult from './UploadResult';
import SignIn from './SignIn';
import Join from './Join';

const Top = () => {
    const onLogout = () => {
        localStorage.clear();
        window.location.replace('http://localhost:3000/')
    };

    return (
        <div id="top">
            <ul>
                <li>
                    <Link to="/">[홈]</Link>
                    <Link to="/bookList">[도서 조회]</Link>
                    <Link to="/bookInsert">[도서 등록]</Link>
                    <Link to="/bookSearchForm">[도서 검색]</Link>
                    <Link to="/chart">[차트]</Link>
                    <Link to="/chart_db">[차트 (DB)]</Link>
                    <Link to="/upload">[파일 업로드]</Link>
                    <Link to="/register">[회원가입]</Link>
                    {
                        // 토큰 없으면 [로그인]
                        // 토큰 있으면 [로그아웃] 보이게
                        localStorage.getItem("token") === null ?
                            <Link to="/login">[로그인]</Link> :
                            <Link onClick={onLogout}>[로그아웃]</Link>
                    }
                </li>
            </ul>
            <hr />
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/bookList" element={<BookList />} />
                <Route path="/bookDetailView/:bookno" element={<BookDetailView />} />
                <Route path="/bookInsert" element={<BookInsert />} />
                <Route path="/bookUpdate/:bookno" element={<BookUpdate />} />
                <Route path="/BookSearchForm" element={<BookSearch />} />
                <Route path="/chart_db" element={<ChartDB />} />
                <Route path="/chart" element={<Chart />} />
                <Route path="/upload" element={<Upload />} />
                <Route path="/uploadResult" element={<UploadResult />} />
                <Route path="/login" element={<SignIn />} />
                <Route path="/register" element={<Join />} />
            </Routes>
        </div>
    );
};

export default Top;