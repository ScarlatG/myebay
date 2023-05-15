<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="it" class="h-100">
<head>
    <meta charset="UTF-8">
    <title>Visualizza Elemento</title>
    <jsp:include page="../header.jsp" />
</head>
<body class="d-flex flex-column h-100">
    
    <jsp:include page="../navbar.jsp" />
    
    <main class="flex-shrink-0">
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h5>Visualizza dettaglio</h5>
                </div>
                <div class="card-body">
                    <dl class="row">
                        <dt class="col-sm-3 text-right">Id:</dt>
                        <dd class="col-sm-9">${show_annuncio_attr.id}</dd>
                    </dl>
                    <dl class="row">
                        <dt class="col-sm-3 text-right">Testo Annuncio:</dt>
                        <dd class="col-sm-9">${show_annuncio_attr.testoAnnuncio}</dd>
                    </dl>
                    <dl class="row">
                        <dt class="col-sm-3 text-right">Prezzo:</dt>
                        <dd class="col-sm-9">${show_annuncio_attr.prezzo}</dd>
                    </dl>
                    <dl class="row">
                        <dt class="col-sm-3 text-right">Data creazione:</dt>
                        <dd class="col-sm-9">
                            <fmt:parseDate value="${show_annuncio_attr.data}" pattern="yyyy-MM-dd" var="parsedDate" />
                            <fmt:formatDate value="${parsedDate}" pattern="dd/MM/yyyy" />
                        </dd>
                    </dl>
                    <dl class="row">
                        <dt class="col-sm-3 text-right">Categorie:</dt>
                        <c:forEach items="${categorie_annuncio_attr}" var="categoriaItem">
                            <dd class="col-sm-9">${categoriaItem}</dd>
                        </c:forEach>
                    </dl>
                </div>
                <div class="card-footer">
                    <a href="${pageContext.request.contextPath}/annuncio/listUtente" class="btn btn-outline-secondary" style="width:80px">
                        <i class="fa fa-chevron-left"></i> Back
                    </a>
                </div>
            </div>
        </div>
    </main>
    
    <jsp:include page="../footer.jsp" />
    
</body>
</html>