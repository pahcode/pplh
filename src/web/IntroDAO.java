package web;

import java.util.ArrayList;

public class IntroDAO {
	
	private ArrayList<Intro> list = new ArrayList();
	
	private static IntroDAO instance = new IntroDAO();
	
	public static IntroDAO getInstance() {
		return instance;
	}
	
	public ArrayList<Intro> getlist() {
		return list;
	}
	
	public ArrayList<Intro> init() {
		list.clear();
		
		String team = "";
		String substance = "";
		
		team = "사장 직속";
		substance = "1. 비서업무, 의전업무<br>"
				+ "2. 홍보, 공고, 광고 및 대언론 관련 업무<br>"
				+ "3. 경영혁신, 지속가능경영, 신성장동력, 사회적가치추진(일자리 창출 등), 미래전략 관련 업무<br>"
				+ "4. 재난관리, 안전관리, 안전영향평가 관련 업무";
		Intro i1 = new Intro(team, substance);
		
		team = "상임감사위원 직속";
		substance = "1. 내부감사 및 사정업무<br>"
				+ "2. 외부감사 총괄(국정감사 제외)";
		Intro i2 = new Intro(team, substance);
		
		team = "토지주택연구원";
		substance = "1. 토지/주택/도시분야 등 연구개발<br>"
				+ "2. 영전략 및 정책개발 연구<br>"
				+ "3. 주택의 성능개선 및 하자저감을 위한 연구개발";
		Intro i3 = new Intro(team, substance);
		
		team = "LH토지주택대학교";
		substance = "1. LH토지주택대학교 운영";
		Intro i4 = new Intro(team, substance);
		
		team = "기획재무본부";
		substance = "1. 공사 중요업무 전반에 대한 기획과 조정<br>"
				+ "2. 전사 경영목표, 경영전략 수립<br>"
				+ "3. 예산 및 운영계획수립<br>"
				+ "4. 재무전략 및 계획 수립<br>"
				+ "5. 조직관리, 성과관리, 출자회사 관리<br>"
				+ "6. 사업계획 수립 · 조정 · 심의 · 운용<br>"
				+ "7. 자금의 조달 · 운용 및 회계 · 결산 · 세무 관련 업무<br>"
				+ "8. 전사적 판매전략수립 및 판매목표관리<br>"
				+ "9. 토지 · 주택 판매 제도, 판매기법 개발, 실적관리 총괄<br>"
				+ "10. 보상제도 · 기획, 지가심사 및 수탁보상 관련 업무";
		Intro i5 = new Intro(team, substance);
		
		team = "경영혁신본부";
		substance = "1. 총무 및 사옥 관련 업무<br>"
				+ "2. 고객만족, 민원(상담, 처리, 관리 등) 관련 업무<br>"
				+ "3. 인사, 교육, 복지후생 및 노무 관련 업무<br>"
				+ "4. 법규의 통할과 송무관리<br>"
				+ "5. 경영정보 관련 업무<br>"
				+ "6. 조달, 계약 관련 업무<br>"
				+ "7. 비상계획 관련 업무<br>"
				+ "8. 박물관 운영 및 문화재 조사 관련 업무";
		Intro i6 = new Intro(team, substance);
		
		team = "주거복지본부";
		substance = "1. 본부 관장사업의 경영계획 수립 및 사업관리 총괄<br>"
				+ "2. 매입, 전세임대, 주거급여사업 등 주거복지 관련 업무<br>"
				+ "3. 임대주택 정책지원 및 제도개선 업무<br>"
				+ "4. 임대주택 공급, 운영 및 자산관리 관련 업무";
		Intro i7 = new Intro(team, substance);
		
		team = "스마트도시본부";
		substance = "1. 본부 관장사업의 경영계획 수립 및 사업관리 총괄<br>"
				+ "2. 공공택지, 신도시, 택지, 도시 개발 관련 업무<br>"
				+ "3. 공공택지, 신도시, 택지, 도시 설계 관련 업무<br>"
				+ "4. 스마트도시 개발 관련 업무<br>"
				+ "5. 조경, 경관, 공공건축물 관련 업무<br>"
				+ "6. 환경시설, 전기, 기계, 에너지 관련 업무<br>"
				+ "7. 공간정보, 국토 및 주택정보화 관련 업무<br>"
				+ "8. 제영향평가 관련 업무";
		Intro i8 = new Intro(team, substance);
		
		
		list.add(i1);
		list.add(i2);
		list.add(i3);
		list.add(i4);
		list.add(i5);
		list.add(i6);
		list.add(i7);
		list.add(i8);
		
		return list;
	}

}
