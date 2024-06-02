package join.service;

public class DuplicateIdException extends RuntimeException {
    public DuplicateIdException() {
        super("아이디가 중복되었습니다.");
    }

    public DuplicateIdException(String message) {
        super(message);
    }
}