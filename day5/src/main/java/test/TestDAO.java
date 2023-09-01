package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TestDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public TestDAO() {
		con= DBConnect.getConnect();
		System.out.println("dao 생성자 실행: "+con);
	}
	
	public ArrayList<TestDTO> list(){
		ArrayList<TestDTO> list = new ArrayList<>();
		
		String sql ="select * from test_board";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				TestDTO dto = new TestDTO();
				dto.setId(rs.getInt("id"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setSavedate(rs.getTimestamp("savedate"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				list.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
		
		
	}
	public int writeSave(TestDTO dto) {
		int bool=0;
		String sql="insert into test_board(id, name, title, content, idgroup, step, indent)"
				+" values(test_board_seq.nextval,?,?,?, test_board_seq.currval,0,0)";
		//nestval은 다음 번호를 등록하겠다는 것임. currval은 최근의 증가된 번호를 등록하겠다는 것
		
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			bool=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bool;
	}
}
