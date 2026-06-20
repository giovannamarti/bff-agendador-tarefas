package com.javanauta.bffagendadortarefas.infrastructure.exception;

import javax.naming.AuthenticationException;

public class UnauthorizedException extends RuntimeException{

    public UnauthorizedException(String mensagem){
        super(mensagem);
    }

    public UnauthorizedException(String mensagem, Throwable throwable){
        super(mensagem);
    }
}
