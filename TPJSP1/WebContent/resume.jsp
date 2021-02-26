<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Content-Type">
<title>Résumé des commandes</title>
</head>
<body>
	<%if(request.getParameter("civilite")!= null || request.getParameter("nom")!= null){ %>
	<p> <% out.print(request.getParameter("civilite")+ " " + request.getParameter("nom") + " a commandé : ");%> ! </p>
	<%}else{out.print("Un utilisateur anonyme a commandé ");} %>
	<p> <strong>En entrée,</strong>
		<% if(request.getParameter("entree")!= null)
		{
			String []tab = request.getParameterValues("entree");
			if(tab.length>1){
				for(int i =0; i<tab.length; i++){
					out.println(tab[i]);
					if(i!=tab.length-1){
						out.println(",  ");
					}else{
						out.println(".  ");
					}
				}
			}else{
				out.println(request.getParameter("entree") +".");
			}
			
		}else{
			out.println(" rien !");
		}
		%>
	</p>
	
	<p> <strong>En plat,</strong>
		<% if(request.getParameter("plat")!= null)
		{
			String []tab = request.getParameterValues("plat");
			if(tab.length>1){
				for(int i =0; i<tab.length; i++){
					out.println(tab[i]);
					if(i!=tab.length-1){
						out.println(",  ");
					}else{
						out.println(".  ");
					}
				}
			}else{
				out.println(request.getParameter("plat") +".");
			}
			
		}else{
			out.println(" rien !");
		}
		%>
	</p>
	
	<p> <strong>En dessert, </strong>
		<% if(request.getParameter("dessert")!= null)
		{
			String []tab = request.getParameterValues("dessert");
			if(tab.length>1){
				for(int i =0; i<tab.length; i++){
					out.println(tab[i]);
					if(i!=tab.length-1){
						out.println(",  ");
					}else{
						out.println(".  ");
					}
				}
			}else{
				out.println(request.getParameter("dessert") +".");
			}
			
		}else{
			out.println(" rien !");
		}
		%>
	</p>
	
	<button onclick="location.href = 'commande.jsp';" id="retour" class="submit-button" >Retour</button>
	
</body>
</html>