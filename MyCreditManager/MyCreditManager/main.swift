import Foundation

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
            break
        } else if num_answer == "x" {
            break
        } else {
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
        }

    }
}
 
// 학생추가
func student_add() {
    var name = [String]()
    
    print("추가할 학생의 이름을 입력해주세요")
    let name_answer = readLine()!
    
    if name_answer.count == 0 {
        // 입력받은 문자열이 빈 문자열일 때
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        start()
    } else {
        //let name_answer = readLine()!
        
        while let name_answer = readLine() {
            // 입력받은 문자열을 배열에 추가
            name.append(name_answer)
            print("\(name_answer)학생을 추가했습니다.")

            // 입력받은 문자열이 배열에 있는지 확인
            if name.contains(name_answer) {
                print("\(name_answer)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
                start()
            }
        }
    }
}

// 학생삭제
func student_del() {
    print("Student_del")
}

// 성적추가(변경)
func score_add() {
    print("Score_add")
}

// 성적삭제
func score_del() {
    print("Score_del")
}

// 평점보기
func avg_score() {
    print("Avg_scroe")
}
