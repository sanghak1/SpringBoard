package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.AuthVO;
import kr.board.entity.Member;

// CRUD 메소드 넣는 인터페이스
@Mapper // - Mybatis API
public interface MemberMapper {
	public Member registerCheck(String memID);

	public int register(Member m); // 회원 등록(성공 1, 실패 0)

	public Member memLogin(Member mvo); // 로그인 체크

	public int memUpdate(Member mvo); // 수정하기
	
	public Member getMember(String memID);
	
	public void memProfileUpdate(Member mvo);

	public void authInsert(AuthVO saveVO);

	public void authDelete(String memID);

}
