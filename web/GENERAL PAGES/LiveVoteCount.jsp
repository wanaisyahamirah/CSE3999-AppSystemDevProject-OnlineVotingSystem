<%-- 
    Document   : LiveVoteCount
    Created on : Jun 1, 2021, 12:47:37 PM
    Author     : Wan Aisyah Amirah <S54164@ocean.umt.edu.my>
--%>

<%@page import="DAOImpl.ResultDAOImpl"%>
<%@page import="DAO.ResultDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Live Vote Count</title>
        <link href="https://unpkg.com/tailwindcss/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <%
        int eventid = Integer.parseInt(request.getParameter("eventid"));
        ResultDAO resultDAO = new ResultDAOImpl();
        int count = resultDAO.countResultByEventId(eventid);
    %>
    <body>
        <div class="flex items-center justify-center h-screen bg-gray-900">
            <div class = "space-y-6 text-center">
                <p class = "w-full text-center text-4xl text-white">
                    Live Vote Count
                </p>
                <div class="text-6xl text-center flex w-full items-center justify-center">
                    <div class="w-24 p-2 bg-white text-blue-500 rounded-lg">
                        <div class="font-mono leading-none" x-text="days"><%=count%></div>
                        <div class="font-mono uppercase text-sm leading-none">People Voted</div>
                    </div>
                </div> 
                <div>
                    <a href="<%=request.getContextPath()%>/VOTING MANAGER/Dashboard.jsp" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-20 rounded">
                        Back to Dashboard
                    </a>
                </div>       
            </div>
        </div>
        <script>
            window.setInterval('refresh()', 5000);
            // Call a function every 10000 milliseconds 
            // (OR 10 seconds).

            // Refresh or reload page.
            function refresh() {
                window.location.reload();
            }
        </script>
    </body>
</html>