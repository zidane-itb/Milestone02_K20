package com.milestone.datasourcenfc.exceptionshandler;

import com.milestone.datasourcenfc.exceptions.PersonNotFoundException;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.HashMap;
import java.util.Map;

@RestControllerAdvice
@Log4j2
public class PersonExceptionHandler {

    @ExceptionHandler(PersonNotFoundException.class)
    public ResponseEntity<Map> personNotFound(Exception ex) {
        log.info("data not found, exception: {}", ex);

        Map<String, String> responseMap = new HashMap<>();
        responseMap.put("message", "data not found.");

        return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                .body(responseMap);
    }

}
