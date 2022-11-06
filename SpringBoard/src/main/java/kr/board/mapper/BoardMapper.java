package kr.board.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Board;

// CRUD 메소드 넣는 인터페이스
@Mapper // - Mybatis API
public interface BoardMapper {
	public List<Board> getLists(); // 전체리스트

	public void boardInsert(Board vo);

	public Board boardContent(int idx);
	
    public void boardDelete(int idx);
    
    public void boardUpdate(Board vo);
    
    @Update("update myboard set count=count+1 where idx=#{idx}")
    public void boardCount(int idx);
}
