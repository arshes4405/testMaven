<%@ page import="java.io.*" %>
<%@ page import="com.sun.org.apache.xerces.internal.xs.StringList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    try{
        //attr list
        List<String> attrList = new ArrayList<String>();
        attrList.add("attr1");
        attrList.add("attr2");

        List<String> typeList = new ArrayList<String>();
        typeList.add("string");
        typeList.add("integer");

        // 파일 객체 생성
/*        FileInputStream input=new FileInputStream("C:\\temp\\attributeAll.txt");
        InputStreamReader reader=new InputStreamReader(input,"UTF-8");
        BufferedReader in=new BufferedReader(reader);

        FileOutputStream output=new FileOutputStream("C:\\temp\\attributeAll.txt",false);
        OutputStreamWriter writer=new OutputStreamWriter(output,"UTF-8");
        BufferedWriter outString=new BufferedWriter(writer);*/



        for(int i=0;i<attrList.size();i++){
            String attrName = attrList.get(i);
            StringBuffer sb = new StringBuffer();
            sb.append("add attribute ");
            sb.append(attrName);
            sb.append("\n\tdescription 'HHI Notebook Model Specification'");
            sb.append("\n\ttype " + typeList.get(i));
            sb.append("\n;");
            sb.append("\n\nadd property 'attribute_" + attrName + "' ");
            sb.append("on program 'eServiceSchemaVariableMapping.tcl' to attribute '"+attrName+"';");
            sb.append("\n");
            sb.append("\n");
            String filePath = "c:\\temp\\test\\"+attrName+".txt";
            File file = new File(filePath) ;

            // true 지정시 파일의 기존 내용에 이어서 작성
            FileWriter fw = new FileWriter(file, true) ;

            // 파일안에 문자열 쓰기
            fw.write(sb.toString());
            fw.flush();

            // 객체 닫기
            fw.close();
        }

    }catch(Exception e){
        e.printStackTrace();
    }

%>

<html>
<body>
<h2>attribute maker</h2>
</body>
</html>
