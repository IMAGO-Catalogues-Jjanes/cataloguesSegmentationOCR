<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.loc.gov/standards/alto/ns-v4#"
    xsi:schemaLocation="http://www.loc.gov/standards/alto/ns-v4# https://gitlab.inria.fr/scripta/escriptorium/-/raw/develop/app/escriptorium/static/alto-4-1-baselines.xsd"
    exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:variable name="Title">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Title']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Main">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Main']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Damage">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Damage']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Decoration">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Decoration']/@ID"/>
    </xsl:variable>
    <xsl:variable name="DropCapital">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'DropCapital']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Figure">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Figure']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Margin">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Margin']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Numbering">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Numbering']/@ID"/>
    </xsl:variable>
    <xsl:variable name="MusicNotation">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'MusicNotation']/@ID"/>
    </xsl:variable>
    <xsl:variable name="RunningTitle">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'RunningTitle']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Seal">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Seal']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Signatures">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Signatures']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Stamp">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Stamp']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Table">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Table']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Entry">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Entry']/@ID"/>
    </xsl:variable>
    <xsl:variable name="EntryEnd">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'EntryEnd']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Default">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Default']/@ID"/>
    </xsl:variable>
    <xsl:variable name="DropCapitalLine">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'DropCapitalLine']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Interlinear">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Interlinear']/@ID"/>
    </xsl:variable>
    <xsl:variable name="MusicLine">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'MusicLine']/@ID"/>
    </xsl:variable>
    <xsl:variable name="Rubric">
        <xsl:value-of select="//xsi:OtherTag[@LABEL = 'Rubric']/@ID"/>
    </xsl:variable>

    <xsl:template match="/*">
        <alto xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xmlns="http://www.loc.gov/standards/alto/ns-v4#"
            xsi:schemaLocation="http://www.loc.gov/standards/alto/ns-v4# https://gitlab.inria.fr/scripta/escriptorium/-/raw/develop/app/escriptorium/static/alto-4-1-baselines.xsd">
            <xsl:apply-templates/>
        </alto>
    </xsl:template>

    <xsl:template match="xsi:Description">
        <xsl:element name="Description" namespace="http://www.loc.gov/standards/alto/ns-v4#">
            <xsl:element name="MeasurementUnit" namespace="http://www.loc.gov/standards/alto/ns-v4#">
                <xsl:value-of select=".//xsi:MeasurementUnit"/>
            </xsl:element>
            <xsl:element name="sourceImageInformation"
                namespace="http://www.loc.gov/standards/alto/ns-v4#">
                <xsl:element name="fileName" namespace="http://www.loc.gov/standards/alto/ns-v4#">
                    <xsl:value-of select=".//xsi:fileName"/>
                </xsl:element>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    <xsl:template match="xsi:Tags">
        <xsl:element name="Tags" namespace="http://www.loc.gov/standards/alto/ns-v4#">
            <xsl:for-each select=".//xsi:OtherTag">
                <xsl:choose>
                    <xsl:when test="./@LABEL = 'Title'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT1</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Main'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT2</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Damage'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT3</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Decoration'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT4</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'DropCapital'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT5</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Figure'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT6</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Margin'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT7</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Numbering'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT8</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'MusicNotation'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT9</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'RunningTitle'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT10</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Seal'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT11</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Signatures'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT12</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Stamp'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT13</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Table'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT14</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Entry'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT15</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'EntryEnd'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>BT16</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Default'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>LT1</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'DropCapitalLine'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>LT2</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Interlinear'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>LT3</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'MusicLine'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>LT4</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                    <xsl:when test="./@LABEL = 'Rubric'">
                        <xsl:element name="OtherTag"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="ID">
                                <xsl:text>LT5</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="LABEL">
                                <xsl:value-of select="./@LABEL"/>
                            </xsl:attribute>
                            <xsl:attribute name="DESCRIPTION">
                                <xsl:value-of select="./@DESCRIPTION"/>
                            </xsl:attribute>
                        </xsl:element>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    <xsl:template match="xsi:Layout">
        <xsl:element name="Layout" namespace="http://www.loc.gov/standards/alto/ns-v4#">
            <xsl:element name="Page" namespace="http://www.loc.gov/standards/alto/ns-v4#">
                <xsl:attribute name="WIDTH">
                    <xsl:value-of select=".//xsi:Page/@WIDTH"/>
                </xsl:attribute>
                <xsl:attribute name="HEIGHT">
                    <xsl:value-of select=".//xsi:Page/@HEIGHT"/>
                </xsl:attribute>
                <xsl:attribute name="PHYSICAL_IMG_NR">
                    <xsl:value-of select=".//xsi:Page/@PHYSICAL_IMG_NR"/>
                </xsl:attribute>
                <xsl:attribute name="ID">
                    <xsl:value-of select=".//xsi:Page/@ID"/>
                </xsl:attribute>
                <xsl:element name="PrintSpace" namespace="http://www.loc.gov/standards/alto/ns-v4#">
                    <xsl:attribute name="HPOS">
                        <xsl:value-of select=".//xsi:Page/xsi:PrintSpace/@HPOS"/>
                    </xsl:attribute>
                    <xsl:attribute name="VPOS">
                        <xsl:value-of select=".//xsi:Page/xsi:PrintSpace/@VPOS"/>
                    </xsl:attribute>
                    <xsl:attribute name="WIDTH">
                        <xsl:value-of select=".//xsi:Page/xsi:PrintSpace/@WIDTH"/>
                    </xsl:attribute>
                    <xsl:attribute name="HEIGHT">
                        <xsl:value-of select=".//xsi:Page/xsi:PrintSpace/@HEIGHT"/>
                    </xsl:attribute>
                    <xsl:for-each select=".//xsi:TextBlock">
                        <xsl:element name="TextBlock"
                            namespace="http://www.loc.gov/standards/alto/ns-v4#">
                            <xsl:attribute name="HPOS">
                                <xsl:value-of select="./@HPOS"/>
                            </xsl:attribute>
                            <xsl:attribute name="VPOS">
                                <xsl:value-of select="./@VPOS"/>
                            </xsl:attribute>
                            <xsl:attribute name="WIDTH">
                                <xsl:value-of select="./@WIDTH"/>
                            </xsl:attribute>
                            <xsl:attribute name="HEIGHT">
                                <xsl:value-of select="./@HEIGHT"/>
                            </xsl:attribute>
                            <xsl:attribute name="ID">
                                <xsl:value-of select="./@ID"/>
                            </xsl:attribute>
                            <xsl:attribute name="TAGREFS">
                                <xsl:if test="@TAGREFS = $Title">
                                    <xsl:text>BT1</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Main">
                                    <xsl:text>BT2</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Damage">
                                    <xsl:text>BT3</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Decoration">
                                    <xsl:text>BT4</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $DropCapital">
                                    <xsl:text>BT5</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Figure">
                                    <xsl:text>BT6</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Margin">
                                    <xsl:text>BT7</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Numbering">
                                    <xsl:text>BT8</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $MusicNotation">
                                    <xsl:text>BT9</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $RunningTitle">
                                    <xsl:text>BT10</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Seal">
                                    <xsl:text>BT11</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Signatures">
                                    <xsl:text>BT12</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Stamp">
                                    <xsl:text>BT13</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Table">
                                    <xsl:text>BT14</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $Entry">
                                    <xsl:text>BT15</xsl:text>
                                </xsl:if>
                                <xsl:if test="@TAGREFS = $EntryEnd">
                                    <xsl:text>BT16</xsl:text>
                                </xsl:if>
                            </xsl:attribute>
                            <xsl:copy-of select="./xsi:Shape" copy-namespaces="no"/>
                            <xsl:for-each select="./xsi:TextLine">
                                <xsl:element name="TextLine"
                                    namespace="http://www.loc.gov/standards/alto/ns-v4#">
                                    <xsl:attribute name="ID">
                                        <xsl:value-of select="./@ID"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="TAGREFS">
                                        <xsl:if test="@TAGREFS = $Default">
                                            <xsl:text>LT1</xsl:text>
                                        </xsl:if>
                                        <xsl:if test="@TAGREFS = $DropCapitalLine">
                                            <xsl:text>LT2</xsl:text>
                                        </xsl:if>
                                        <xsl:if test="@TAGREFS = $Interlinear">
                                            <xsl:text>LT3</xsl:text>
                                        </xsl:if>
                                        <xsl:if test="@TAGREFS = $MusicLine">
                                            <xsl:text>LT4</xsl:text>
                                        </xsl:if>
                                        <xsl:if test="@TAGREFS = $Rubric">
                                            <xsl:text>LT5</xsl:text>
                                        </xsl:if>
                                    </xsl:attribute>
                                    <xsl:attribute name="BASELINE">
                                        <xsl:value-of select="./@BASELINE"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="HPOS">
                                        <xsl:value-of select="./@HPOS"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="VPOS">
                                        <xsl:value-of select="./@VPOS"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="WIDTH">
                                        <xsl:value-of select="./@WIDTH"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="HEIGHT">
                                        <xsl:value-of select="./@HEIGHT"/>
                                    </xsl:attribute>
                                    <xsl:copy-of select="./xsi:Shape" copy-namespaces="no"/>
                                    <xsl:copy-of select="./xsi:String" copy-namespaces="no"/>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </xsl:element>
        </xsl:element>

    </xsl:template>

</xsl:stylesheet>
