<?xml version="1.0" encoding="UTF-8"?>
<!-- XSL Transformation Sheet deleting the entries textblocks-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema" xmlns:a="http://www.loc.gov/standards/alto/ns-v4#"
    xsi:schemaLocation="http://www.loc.gov/standards/alto/ns-v4# https://gitlab.inria.fr/scripta/escriptorium/-/raw/develop/app/escriptorium/static/alto-4-1-baselines.xsd"
     version="2.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
            <xsl:template match="@*|node()">
                <xsl:copy>
                    <xsl:apply-templates select="@*|node()" />
                </xsl:copy>
            </xsl:template>
            
    <xsl:template match='a:TextBlock[@TAGREFS="BT15"]|a:TextBlock[@TAGREFS="BT16"]'/>
    <xsl:template match='a:OtherTag[@ID="BT15"]|a:OtherTag[@ID="BT16"]'/>
</xsl:stylesheet>