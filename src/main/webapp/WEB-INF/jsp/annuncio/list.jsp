<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html lang="it" class="h-100">
<head>
    <meta charset="UTF-8">
    <title>Pagina dei risultati</title>
    <jsp:include page="../header.jsp" />
</head>
<body class="d-flex flex-column h-100">
    <jsp:include page="../navbar.jsp" />
    
    <main class="flex-shrink-0">
        <div class="container">
            <div class="alert alert-success alert-dismissible fade show ${successMessage == null ? 'd-none' : ''}" role="alert">
                ${successMessage}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <div class="alert alert-danger alert-dismissible fade show ${errorMessage == null ? 'd-none' : ''}" role="alert">
                ${errorMessage}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5>Lista dei risultati</h5> 
                </div>
                <div class="card-body">
                    <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-secondary">
                        <i class="fa fa-chevron-left"></i> Torna alla Ricerca
                    </a>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Testo</th>
                                    <th>Prezzo</th>
                                    <th>Azioni</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${annunci_list_attribute}" var="annuncioItem">
                                    <tr>
                                        <td>${annuncioItem.testoAnnuncio}</td>
                                        <td>${annuncioItem.prezzo}</td>
                                        <td>
                                            <a class="btn btn-sm btn-outline-secondary" href="${pageContext.request.contextPath}/annuncio/show/${annuncioItem.id}">Visualizza</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <jsp:include page="../footer.jsp" />
    
</body>
</html>