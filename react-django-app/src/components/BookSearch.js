import React, { useState } from 'react';
import axios from 'axios';
import BookSearchListItem from './BookSearchListItem';

const BookSearch = () => {
    const [keyword, setKeyword] = useState();
    const [type, setType] = useState();
    const [data, setData] = useState([]);

    // <input> 입력값 state 설정
    const onKeywordChange = (e) => setKeyword(e.target.value);
    const onTypeChange = (e) => setType(e.target.value);

    // submit 버튼 클릭 시
    const onSubmit = (e) => {
        e.preventDefault();
        axios.get(`http://localhost:8000/book_app/search/${type}/${keyword}`)
            .then(
                response => {
                    console.log("response.data", response.data);
                    setData(response.data);
                }
            )
    };

    return (
        <div>
            <form id="frmBookSearch" onSubmit={onSubmit} >
                <select id="search_type" name="type" onChange={onTypeChange} >
                    <option value="">검색 조건 선택</option>
                    <option value="bookname">도서명</option>
                    <option value="bookauthor">저자</option>
                </select> &nbsp;&nbsp;
                <input type="text" name="keyword" onChange={onKeywordChange} />
                <input type="submit" value="검색" />
            </form>
            <hr />
            {
                // 검색 결과 data가 있는 경우에 테이블 출력 (!== 아님)
                data != "" ?
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
                            </tr>
                        </thead>
                        <tbody>
                            {
                                data.map(function (book, index) {
                                    return <BookSearchListItem book={book} key={index} name={'search'} />
                                })
                            }
                        </tbody>
                    </table>
                    :
                    <span>검색 내용 없음</span>
            }
        </div>
    );
};

export default BookSearch;