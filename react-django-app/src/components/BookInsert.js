import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';

const BookInsert = () => {
    let history = useNavigate();

    // state   
    const [book, setBook] = useState({
        bookno: '',
        bookname: '',
        bookauthor: '',
        bookprice: '',
        bookstock: '',
        bookdate: '',
        pubno: ''
    });

    const onChange = (e) => {
        const { value, name } = e.target; // e.target에서 name과 value 추출
        setBook({
            ...book, // 기존의 prd 객체 복제한 후
            [name]: value // name 키를 가진 값을 value로 설정
        });

    };

    // 취소 버튼 눌렀을 때
    const onReset = () => {
        setBook({
            bookno: '',
            bookname: '',
            bookauthor: '',
            bookprice: '',
            bookstock: '',
            bookdate: '',
            pubno: ''
        })
    };


    // submit 버튼 클릭 시
    const onSubmit = (e) => {
        e.preventDefault();

        var frmData = new FormData(document.frmInsert);
        axios.post('http://localhost:8000/book_app/books/', frmData)
            .then(
                response => {
                    alert("등록 완료");
                    history('/bookList'); // 상품 정보 조회 화면으로 이동
                }
            )
    };


    return (
        <div>
            <h3>상품 등록</h3>
            <form name="frmInsert" onSubmit={onSubmit} onReset={onReset}>
                <table id="insert">
                    <thead>
                        <tr>
                            <th>도서번호</th>
                            <td> <input
                                type="text"
                                name="bookno"
                                value={book.bookno}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>도서명</th>
                            <td> <input
                                type="text"
                                name="bookname"
                                value={book.bookname}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>저자</th>
                            <td> <input
                                type="text"
                                name="bookauthor"
                                value={book.bookauthor}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>가격</th>
                            <td> <input
                                type="text"
                                name="bookprice"
                                value={book.bookprice}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>발행일</th>
                            <td> <input
                                type="text"
                                name="bookdate"
                                value={book.bookdate}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>재고</th>
                            <td> <input
                                type="text"
                                name="bookstock"
                                value={book.bookstock}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>출판사번호</th>
                            <td> <input
                                type="text"
                                name="pubno"
                                value={book.pubno}
                                onChange={onChange} />
                            </td>
                        </tr>
                        <tr>
                            <td colSpan="2">
                                <input type="submit" value="등록" />
                                <input type="reset" value="취소" />
                            </td>
                        </tr>
                    </thead>
                </table>
            </form>
        </div>
    );
};

export default BookInsert;