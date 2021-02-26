<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Commande internet</title>
</head>
<body>
	<h1>Bienvenue chez Jordytos cuistos !</h1>
<form method="post" action="resume.jsp">
	<p>Veuillez indiquer votre nom : </p>
	<select name="civilite">
	   <option value="Mr">M</option>
	   <option value="Mme">Mme</option>	   
	   <input type="text"  name="nom"/>
	</select></br>
	
	
	<p>Entrée : </p>
	<select multiple name="entree" id="entree" size="10">
	   
	   <%! ArrayList entree = new ArrayList(); 
	   int i;
	   %>
	   <% if(entree.isEmpty())
	   {
		entree.add("Noix de St Jacques");
		entree.add("Salade Césare");
		entree.add("Fois Gras");
		entree.add("Délices du jardin");   
	   }%>
		<% for(i=0; i<entree.size(); i++){ %>
		
		<option > <%= entree.get(i) %>
		
		</option> 
		<%} %>
	</select></br>
	
	<p>Plat : </p>
	<select multiple name="plat" id="plat" size="10">
	   
	   <%! ArrayList plat = new ArrayList(); 
	   %>
	   <% if(plat.isEmpty())
	   {
		   plat.add("Risoto");
		   plat.add("Cote de boeuf");
		   plat.add("Lasagne aux legumes");
		   plat.add("Pizza"); 
		   plat.add("Pates bolognaises"); 
		
	   }%>
		<% for(i=0; i<plat.size(); i++){ %>
		
		<option > <%= plat.get(i) %>
		
		</option> 
		<%} %>
	</select></br>
	
	<p>Dessert : </p>
	<select multiple name="dessert" id="dessert" size="10">
	   
	   <%! ArrayList dessert = new ArrayList(); 
	   %>
	   <% if(dessert.isEmpty())
	   {
		   dessert.add("Glace");
		   dessert.add("Café Gourmand");
		   dessert.add("Salade de fruits");
		   dessert.add("Tarte aux citron"); 
		   dessert.add("Crème brulée"); 
		
	   }%>
		<% for(i=0; i<dessert.size(); i++){ %>
		
		<option > <%= dessert.get(i) %>
		
		</option> 
		<%} %>
	</select></br>
	
	
	<input type="submit" value="Enregistrer" />
</form>
</body>
</html>