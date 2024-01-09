<%@ page import="java.io.*" %>
<%@ page import="com.sun.org.apache.xerces.internal.xs.StringList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    try{
        //attr list
        List<String> attrList = new ArrayList<String>();
        attrList.add("common.FacilityType");
        attrList.add("common.Type");
        attrList.add("common.ModelName");
        attrList.add("common.Location");
        attrList.add("common.Purpose");
        attrList.add("common.Standard");
        attrList.add("common.PowerSpec");
        attrList.add("common.InstallCompany");
        attrList.add("common.Weight");
        attrList.add("common.UseElectricity");
        attrList.add("common.Etc");
        attrList.add("manufacture.Type");
        attrList.add("manufacture.AgitatorType");
        attrList.add("manufacture.DischargeSize");
        attrList.add("manufacture.Capacity");
        attrList.add("manufacture.AgitatorRPM");
        attrList.add("manufacture.Inlet");
        attrList.add("manufacture.Material");
        attrList.add("manufacture.TransferAmount");
        attrList.add("manufacture.CoolingYN");
        attrList.add("etc.Type");
        attrList.add("etc.FacilityType");
        attrList.add("etc.CapaSpec");
        attrList.add("refrig.Refrigerant");
        attrList.add("refrig.IndoorType");
        attrList.add("refrig.RefrigeratingCapacity");
        attrList.add("refrig.OutdoorType");
        attrList.add("refrig.LegalReportYN");
        attrList.add("package.Type");
        attrList.add("package.FrameMaterial");
        attrList.add("package.BPM");
        attrList.add("package.Speed");
        attrList.add("package.Consume1");
        attrList.add("package.Consume2");
        attrList.add("package.Consume3");

        List<String> typeList = new ArrayList<String>();
        typeList.add("string");
        typeList.add("integer");

        // 파일 객체 생성
        FileInputStream input=new FileInputStream("C:\\temp\\attributeAll.txt");
        InputStreamReader reader=new InputStreamReader(input,"UTF-8");
        BufferedReader in=new BufferedReader(reader);

        FileOutputStream output=new FileOutputStream("C:\\temp\\attributeAll.txt",false);
        OutputStreamWriter writer=new OutputStreamWriter(output,"UTF-8");
        BufferedWriter outString=new BufferedWriter(writer);

        StringBuffer sb = new StringBuffer();

        for(int i=0;i<attrList.size();i++){
            String attrName = attrList.get(i);
            sb.append("add attribute ");
            sb.append(attrName);
            sb.append(" description 'Deasang attribute'");
            sb.append(" type " + typeList.get(0));
            sb.append(";");
            sb.append("\n\n add property 'attribute_" + attrName + "' ");
            sb.append("on program 'eServiceSchemaVariableMapping.tcl' to attribute '"+attrName+"';");
            sb.append("\n");
            sb.append("\n");
        }
        outString.write(sb.toString());
        outString.close();

    }catch(Exception e){
        e.printStackTrace();
    }

%>

<html>
<body>
<h2>attribute maker</h2>
</body>
</html>
