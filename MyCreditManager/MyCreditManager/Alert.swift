import Foundation

enum Alert {
    
    static let start = "원하는 기능을 입력해주세요.\n1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료"
    static let inputError = "뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요."
    static let studentAddInput = "추가할 학생의 이름을 입력해 주세요."
    static let answerError = "입력이 잘못되었습니다. 다시 확인해주세요."
    static let studentAdd = "학생을 추가하였습니다."
    static let studentAddError = "은 이미 존재하는 학생입니다. 추가하지 않습니다."
    static let studentDelInput = "삭제할 학생의 이름을 입력해주세요."
    static let studentDel = "학생을 삭제하였습니다."
    static let studentNotFind = "학생을 찾지 못했습니다."
    static let scoreAdd = "성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.\n입력예) Mickey Swift A+\n만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다."
    static let scoreInput = "성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.\n입력예) Mickey Swift"
    static let scoreAvgStudentName = "평점을 알고싶은 학생의 이름을 입력해주세요"
    static let scoreNotFindStudent = "성적이 존재하지 않는 학생입니다."
    static let exit = "프로그램을 종료합니다..."
    
    static let scores = ["A+" : 4.5, "A" : 4, "B+" : 3.5, "B" : 3, "C+" : 2.5, "C" : 2, "D+" : 1.5, "D" : 1, "F" : 0]
}
