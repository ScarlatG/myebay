<header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary" aria-label="Eighth navbar example">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/home">My Website</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home">Home</a>
          </li>
          
          <sec:authorize access="isAuthenticated()">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="gestione-annunci-dropdown" data-bs-toggle="dropdown" aria-expanded="false">Gestione Annunci</a>
              <ul class="dropdown-menu" aria-labelledby="gestione-annunci-dropdown">
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/annuncio/search">Cerca annunci</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/annuncio/insert">Crea annuncio</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/acquisto/search">Cerca acquisti</a></li>
              </ul> 
            </li>
          </sec:authorize>
          
          <sec:authorize access="hasRole('ADMIN')">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="gestione-utenti-dropdown" data-bs-toggle="dropdown" aria-expanded="false">Gestione Utenti</a>
              <ul class="dropdown-menu" aria-labelledby="gestione-utenti-dropdown">
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/utente/search">Ricerca Utenti</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/utente/insert">Inserisci Utente</a></li>
              </ul>
            </li>
          </sec:authorize>
        </ul>
        
        <!-- Sezione a destra -->
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <sec:authorize access="isAuthenticated()">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle text-light" href="#" id="user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user"></i> ${userInfo.nome } ${userInfo.cognome }
              </a>
              <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="user-dropdown">
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/account/editPassword"><i class="fas fa-lock"></i> Cambia Password</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
              </ul>
            </li> 
          </sec:authorize>
          
          <sec:authorize access="!isAuthenticated()">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/login"><i class="fas fa-sign-in-alt"></i> Login</a>
            </li>
          </sec:authorize>
        </ul>
      </div>
    </div>
  </nav>
</header>