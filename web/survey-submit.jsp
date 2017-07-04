<%@page import="org.owen.helper.UtilHelper"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.owen.survey.ResponseHelper"%>
<%@page import="org.owen.survey.Response"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>

<%System.out.println("GBC :::Entering survey-submit.jsp ");
    String empRating = request.getParameter("emp_rating");
    System.out.println("GBC :::Starting survey-submit.jsp  ");
    if (!empRating.isEmpty()) {
        try {
            System.out.println("GBC :::Entering the try block in survey-submit.jsp");
            JSONArray arr = new JSONArray(request.getParameter("emp_rating"));
            ResponseHelper responseHelper = new ResponseHelper();
            List<Response> responseList = new ArrayList();
            for (int i = 0; i < arr.length(); i++) {
                JSONObject jObj = arr.getJSONObject(i);
                System.out.println("GBC :::survey-submit.jsp iterating through the jsonObj");
                Iterator<String> keys = jObj.keys();
                Response respObj = new Response();
                while (keys.hasNext()) {
                    String key = (String) keys.next();
                    if (key.equals("questionId")) {
                        respObj.setQuestionId(Integer.valueOf(jObj.getString(key)));
                    } else if (key.equals("optionId")) {
                        respObj.setOptionId(Integer.valueOf(jObj.getString(key)));
                    } else if (key.equals("comment")) {
                        respObj.setComment(jObj.getString(key));
                    }
                }
                responseList.add(respObj);
                System.out.println("GBC :::submit-we-submit.jsp ");
            }
            System.out.println("Response list size :::: " + responseList.size());
            System.out.println("GBC :::survey-submit.jsp for  exiting the while loop");
            boolean subResp = responseHelper.saveResponses(responseList);
            JSONObject respJOBJ = new JSONObject();
            respJOBJ.put("status", subResp);
            if (subResp) {
                respJOBJ.put("message", "Successfully Saved");
                System.out.println("GBC :::Successfully saved we response");
            } else {
                respJOBJ.put("message", "Saving failed");
                System.out.println("GBC :::Could not save we response");
            }
            out.print(respJOBJ.toString());
            System.out.println("GBC :::Exiting survey-submit.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>