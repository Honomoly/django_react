import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import axios from 'axios';

const BookDetailView = () => {
    // 파라미터로 받아온 값
    const { bookno } = useParams();

    // state 
    const [book, setBook] = useState({
        // bookno: '', // 파라미터로 받아온 값 사용해도 됨
        bookno: '',
        bookname: '',
        bookauthor: '',
        bookprice: '',
        bookstock: '',
        bookdate: '',
        pubno: ''
    });

    // 서버에 요청해서 데이터 받아옴
    // state 값 저장
    const loadData = async () => {
        // const response = await axios.get('http://localhost:8000/book_app/book/' + bookno);
        const response = await axios.get(`http://localhost:8000/book_app/book/${bookno}`);
        console.log("detail : ", response.data);
        setBook({
            // bookno: response.data.bookno,
            bookname: response.data.bookname,
            bookauthor: response.data.bookauthor,
            bookprice: response.data.bookprice,
            bookdate: response.data.bookdate,
            bookstock: response.data.bookstock,
            pubno: response.data.pubno
        });
    }


    // 렌더링할 때마다 호출 
    // 빈배열 : loadData() 한 번만 호출
    useEffect(() => {
        loadData();
    }, []);

    return (
        <div>
            <h3>상품 상세 정보 조회</h3>
            <table id="detail" border="1" width="500">
                <thead>
                    <tr><th>도서번호</th><td> {bookno}</td></tr>
                    <tr><th>도서명 </th><td> {book.bookname}</td></tr>
                    <tr><th>저자 </th><td> {book.bookauthor}</td></tr>
                    <tr><th>가격 </th><td>{book.bookprice}</td></tr>
                    <tr><th>발행일 </th><td> {book.bookdate}</td></tr>
                    <tr><th>재고 </th><td> {book.bookstock}</td></tr>
                    <tr><th>출판사번호 </th><td> {book.pubno}</td></tr>
                </thead>
            </table>
        </div>
    );
};

export default BookDetailView;