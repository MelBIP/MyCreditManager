import Foundation

var name = [String]()
let score = ["A+" : 4.5, "A" : 4, "B+" : 3.5, "B" : 3, "C+" : 2.5, "C" : 2, "D+" : 1.5, "D" : 1, "F" : 0]
var grade = [String]()

start()

func start() {
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")

    while true {
        let num_answer = readLine()!
        
        if num_answer == "1" {
            student_add()
        } else if num_answer == "2" {
            student_del()
        } else if num_answer == "3" {
            score_add()
        } else if num_answer == "4" {
            score_del()
        } else if num_answer == "5" {
            avg_score()
        } else if num_answer == "X" {
            exit(0)
        } else if num_answer == "x" {
            exit(0)
        } else {
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
        }

    }
}
 
// 학생추가
func student_add() {
    
    print("추가할 학생의 이름을 입력해주세요")
    let name_answer = readLine()!
    
    if name_answer.count == 0 {
        // 입력받은 문자열이 빈 문자열일 때
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        start()
    } else {
        // 입력받은 문자열이 배열에 있는지 확인
        if name.contains(name_answer) {
            print("\(name_answer)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
            start()
        } else {
            // 입력받은 문자열을 배열에 추가
            name.append(name_answer)
            print("\(name_answer)학생을 추가했습니다.")
            start()
        }
    }
}

// 학생삭제
func student_del() {
    print("삭제할 학생의 이름을 입력해주세요")
    let name_answer = readLine()!
    
    if name_answer.count == 0 {
        // 입력받은 문자열이 빈 문자열일 때
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        start()
    } else {
        if (name.contains(name_answer) == false) {
            print("\(name_answer) 학생을 찾지못했습니다")
            start()
        } else if (name.contains(name_answer) == true) {
            if let index = name.firstIndex(of: "\(name_answer)") {
                name.remove(at: index)
                print("\(name_answer) 학생을 삭제했습니다")
                start()
            }
        }
    }
}

// 성적추가(변경)
func score_add() {
    print("성적을 추가할 학생의 이름, 과목 이름, 성적(A, A+, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
    print("입력예) Mickey Swift A+")
    print("만약 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
    let score_answer = readLine()!.split(separator: " ") // 띄어쓰기로 구분하여 배열에 저장

    if score_answer.count == 3  {
        let name = String(score_answer[0])
        let subject = String(score_answer[1])
        let score = String(score_answer[2])
        
        // --------------------------------------------------------------
        
        print("\(name) 학생의 \(subject) 과목이 \(score)로 추가(변경)되었습니다.")
    } else {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        start()
    }
}

// 성적삭제
func score_del() {
    print("Score_del")
}

// 평점보기
func avg_score() {
    print("평점을 알고싶은 학생의 이름을 입력해주세요")
    let avg_answer = readLine()!
    
    if avg_answer.count == 0 {
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        start()
    } else {
        if (name.contains(avg_answer) == false) {
            print("\(avg_answer) 학생을 찾지못했습니다")
            start()
        } else {
            
        }
    }
}
