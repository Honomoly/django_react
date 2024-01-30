import React, { useEffect, useState } from 'react';
import axios from 'axios';
import BookListItem from './BookListItem';

const BookList = () => {
    const [data, setData] = useState([]);

    // 서버에 요청해서 데이터 받아옴
    // state 값 저장     
    const loadData = async () => {
        const response = await axios.get('http://localhost:8000/book_app/books/');
        console.log("response.data", response.data);
        setData(response.data);
    }


    // 렌더링할 때마다 호출 
    // 빈배열 : loadData() 한 번만 호출
    useEffect(() => {
        loadData();
    }, []);

    return (
        <div>
            <h3>도서 정보 조회</h3>
            <table id="select">
                <thead>
                    <tr>
                        <th>도서번호</th>
                        <th>도서명</th>
                        <th>저자</th>
                        <th>가격</th>
                        <th>발행일</th>
                        <th>재고</th>
                        <th>출판사번호</th>
                        <th>수정</th>
                        <th>삭제</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        data.map(function (book, i) {
                            return <BookListItem book={book} key={i} />
                        })
                    }
                </tbody>
            </table>
        </div>
    );
};

export default BookList;