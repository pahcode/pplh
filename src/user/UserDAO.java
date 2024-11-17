package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	private ArrayList<User> list = new ArrayList();
	
	// dao 객체생성
	private static UserDAO instance = new UserDAO();
	
	// 기존 dao 객체 주소 반환 기능
	public static UserDAO getInstance() {
		return instance;
	}
	
	// 기존있는 리스트 반환
	public ArrayList<User> getlist() {
		return list;
	}
	
	// ---------- db연동 ----------
	Connection getConnection() {
		String url = "jdbc:mysql://localhost/hagrm";
		String user = "hagrm";
		String password = "seng0322";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			System.out.println("db 연동 실패");
			e.printStackTrace();
		}

		return conn;
	}
	
	// list에 회원 담기
	public ArrayList<User> setUserlist() {
		list.clear();
		try {
			conn = getConnection();
			String sql = "select * from user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (true) {
				if (!rs.next()) break;
				String userId = rs.getString(1);
				String userPw = rs.getString(2);
				String userName = rs.getString(3);
				String userTel = rs.getString(4);
				String reg_date = rs.getString(5);

				User u1 = new User(userId, userPw, userName, userTel, reg_date);
				list.add(u1);
			}

		} catch (Exception e) {
			System.out.println("db user 불러오기 실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// db 닫기
	void close() {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
		}
		try {if (pstmt != null) {pstmt.close();}} catch (Exception e) {}
		try {if (rs != null) {rs.close();}} catch (Exception e) {}
	}
    
	// 아이디체크
	public boolean checkId(String id) {
		for (User u1 : list) {
			if (u1.getUserId().equals(id)) {
			   return true;
			}
		}
		return false;
	}
	
	// 비번체크
	public String checkPw(String id, String pw) {
		String name = "";
		for (User u1 : list) {
			if (u1.getUserId().equals(id) && u1.getUserPw().equals(pw)) {
				name = u1.getUserName();
				return name;
			}
		}
		return name;
	}
	
	// 회원가입
	public void addUser(String userId, String userPw, String userName, String userTel) {
		User u1 = new User(userId, userPw, userName, userTel);
		list.add(u1);
		
		try {
			conn = getConnection();
			String sql = "insert into user(userId, userPw, userName, userTel) values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u1.getUserId());
			pstmt.setString(2, u1.getUserPw());
			pstmt.setString(3, u1.getUserName());
			pstmt.setString(4, u1.getUserTel());

			pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("db 연동 실패");
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	// 회원 불러오기
	public User getUser(String id) {
		User u1 = null;
		try {
			conn = getConnection();
			String sql = "select * from user where userId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				String userId = rs.getString(1);
				String userPw = rs.getString(2);
				String userName = rs.getString(3);
				String userTel = rs.getString(4);
				String reg_date = rs.getString(5);
				
				u1 = new User(userId, userPw, userName, userTel, reg_date);
			}

		} catch (Exception e) {
			System.out.println("db user 불러오기 실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return u1;
	}
	
	// 회원정보수정
	public void updateUser(User u1) {
		try {
			conn = getConnection();
			String sql="update user set userName=?, userTel=? where userId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,u1.getUserName());
			pstmt.setString(2,u1.getUserTel());
			pstmt.setString(3,u1.getUserId());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("db 연동 실패");
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	// 비밀번호변경
	public void updatePw(String id, String changePw) {
		try {
			conn = getConnection();
			String sql="update user set userPw=? where userId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,changePw);
			pstmt.setString(2,id);
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("db연동 실패");
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	// 탈퇴
    public void deleteUser(String id) {
    	try {
    		conn = getConnection();
    		String sql="delete from user where userId=?";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, id);
    		
    		pstmt.executeUpdate();
    	}catch(Exception e) {
    		System.out.println("db연동 실패");
    		e.printStackTrace();
    	}finally {
    		close();
    	}
    }
	

}
