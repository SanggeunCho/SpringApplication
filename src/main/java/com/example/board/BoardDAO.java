package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString("title"));
        vo.setContent(rs.getString("content"));
        vo.setWriter(rs.getString("writer"));
        vo.setCategory(rs.getString("category"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }
}

@Repository
public class BoardDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo){
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int seq){
        String sql="delete from SpringBOARD where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo){
        String sql = "update SpringBOARD set title='" + vo.getTitle() + "'," + "title='" + vo.getTitle() + "'," + "writer='" + vo.getWriter() + "'," + "content='" + vo.getContent() + "'," + "category='" + vo.getCategory() + "'where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    public BoardVO getBoard(int seq){
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
}