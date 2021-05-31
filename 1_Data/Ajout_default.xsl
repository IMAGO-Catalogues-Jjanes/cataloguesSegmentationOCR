<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL Transformation Sheet deleting the entries textblocks-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:a="http://www.loc.gov/standards/alto/ns-v4#"
    xsi:schemaLocation="http://www.loc.gov/standards/alto/ns-v4# https://gitlab.inria.fr/scripta/escriptorium/-/raw/develop/app/escriptorium/static/alto-4-1-baselines.xsd"
     version="1.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
            <xsl:template match="/">
                <alto xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                    xmlns="http://www.loc.gov/standards/alto/ns-v4#"
                    xsi:schemaLocation="http://www.loc.gov/standards/alto/ns-v4# https://gitlab.inria.fr/scripta/escriptorium/-/raw/develop/app/escriptorium/static/alto-4-1-baselines.xsd">
                    <xsl:copy-of select=".//a:Description"/>
                    <xsl:copy-of select=".//a:Tags"/>
                    <Layout>
                        <Page>
                            <xsl:attribute name="WIDTH"><xsl:value-of select=".//a:Page/@WIDTH"/></xsl:attribute>
                            <xsl:attribute name="HEIGHT"><xsl:value-of select=".//a:Page/@HEIGHT"/></xsl:attribute>
                            <xsl:attribute name="PHYSICAL_IMG_NR"><xsl:value-of select=".//a:Page/@PHYSICAL_IMG_NR"/></xsl:attribute>
                            <xsl:attribute name="ID"><xsl:value-of select=".//a:Page/@ID"/></xsl:attribute>
                            <PrintSpace>
                                <xsl:attribute name="HPOS"><xsl:value-of select=".//a:PrintSpace/@HPOS"/></xsl:attribute>
                                <xsl:attribute name="VPOS"><xsl:value-of select=".//a:PrintSpace/@VPOS"/></xsl:attribute>
                                <xsl:attribute name="HEIGHT"><xsl:value-of select=".//a:PrintSpace/@HEIGHT"/></xsl:attribute>
                                <xsl:attribute name="WIDTH"><xsl:value-of select=".//a:PrintSpace/@WIDTH"/></xsl:attribute>
                                <xsl:for-each select=".//a:TextBlock">
                                    <TextBlock>
                                        <xsl:attribute name="HPOS"><xsl:value-of select="@HPOS"/></xsl:attribute>
                                        <xsl:attribute name="VPOS"><xsl:value-of select="@VPOS"/></xsl:attribute>
                                        <xsl:attribute name="WIDTH"><xsl:value-of select="@WIDTH"/></xsl:attribute>
                                        <xsl:attribute name="HEIGHT"><xsl:value-of select="@HEIGHT"/></xsl:attribute>
                                        <xsl:attribute name="ID"><xsl:value-of select="@ID"/></xsl:attribute>
                                        <xsl:attribute name="TAGREFS"><xsl:value-of select="@TAGREFS"/></xsl:attribute>
                                        <Shape>
                                            <xsl:copy-of select="./a:Shape/a:Polygon"/>
                                        </Shape>
                                        <xsl:for-each select=".//a:TextLine">
                                            <TextLine>
                                                <xsl:attribute name="ID"><xsl:value-of select="@ID"/></xsl:attribute>
                                                <xsl:attribute name="TAGREFS">LT135</xsl:attribute>
                                                <xsl:attribute name="BASELINE"><xsl:value-of select="@BASELINE"/></xsl:attribute>
                                                <xsl:attribute name="HPOS"><xsl:value-of select="@HPOS"/></xsl:attribute>
                                                <xsl:attribute name="VPOS"><xsl:value-of select="@VPOS"/></xsl:attribute>
                                                <xsl:attribute name="WIDTH"><xsl:value-of select="@WIDTH"/></xsl:attribute>
                                                <xsl:attribute name="HEIGHT"><xsl:value-of select="@HEIGHT"/></xsl:attribute>
                                                <Shape>
                                                    <xsl:copy-of select="./a:Shape/a:Polygon"/>
                                                </Shape>
                                                <xsl:copy-of select=".//a:String"/>
                                            </TextLine>
                                        </xsl:for-each>
                                    </TextBlock>
                                </xsl:for-each>
                            </PrintSpace>
                        </Page>
                    </Layout>
                </alto>
            </xsl:template>

               
           
    
</xsl:stylesheet>