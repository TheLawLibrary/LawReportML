<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output indent="yes" />

  <xsl:template match="/volume">
    <fo:root>
      <!-- LAYOUT MASTER SET -->
      <fo:layout-master-set>
        <!-- TABLE OF CASES REPORTED MASTERS -->
        <!-- First Page Odd -->
        <fo:simple-page-master master-name="tocr-first-page-odd-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="1.9375in"
          margin-left="2.1875in" margin-right="2.1875in">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.626in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before region-name="tocr-first-page-odd-header"
            extent="0.625in" />
          <fo:region-after region-name="tocr-first-page-odd-footer"
            extent="0.625in" margin-right="0.375" />
        </fo:simple-page-master>

        <fo:simple-page-master master-name="tocr-first-page-even-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="1.9375in"
          margin-left="2.1875in" margin-right="2.1875in">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.0in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before region-name="tocr-first-page-even-header"
            extent="0.625in" />
          <fo:region-after region-name="tocr-first-page-even-footer"
            extent="0.625in" margin-left="0.375" />
        </fo:simple-page-master>

        <fo:simple-page-master master-name="tocr-regular-page-odd-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="1.9375in"
          margin-left="2.125in" margin-right="2.125in">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.0in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before
            region-name="tocr-regular-page-odd-header" extent="0.625in" />
          <fo:region-after
            region-name="tocr-regular-page-odd-footer" extent="0.0in" />
          <fo:region-start
            extent="0.0in" />
          <fo:region-end
            extent="0.0in" />
        </fo:simple-page-master>

        <fo:simple-page-master master-name="tocr-regular-page-even-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="1.9375in"
          margin-left="2.125in" margin-right="2.125in">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.0in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before
            region-name="tocr-regular-page-even-header" extent="0.626in" />
          <fo:region-after
            region-name="tocr-regular-page-even-footer" extent="0.0in" />
          <fo:region-start
            extent="0.0in" />
          <fo:region-end
            extent="0.0in" />
        </fo:simple-page-master>

        <fo:page-sequence-master master-name="tocr">
          <fo:repeatable-page-master-alternatives>
            <fo:conditional-page-master-reference
              master-reference="tocr-first-page-odd-master"
              page-position="first"
              odd-or-even="odd" />
            <fo:conditional-page-master-reference
              master-reference="tocr-first-page-even-master"
              page-position="first"
              odd-or-even="even" />
            <fo:conditional-page-master-reference
              master-reference="tocr-regular-page-odd-master"
              page-position="any"
              odd-or-even="odd" />
            <fo:conditional-page-master-reference
              master-reference="tocr-regular-page-even-master"
              page-position="any"
              odd-or-even="odd" />
          </fo:repeatable-page-master-alternatives>
        </fo:page-sequence-master>

        <!-- OPINION MASTERS -->
        <!-- Opinion First Page -->
        <!-- Even (Left) -->
        <fo:simple-page-master master-name="opinion-first-page-even-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="2.0in"
          margin-left="5.5cm" margin-right="5.5cm">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.0in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before
            region-name="opinion-first-page-even-header"
            extent="0.625in" />
        </fo:simple-page-master>

        <!-- Odd (Right) -->
        <fo:simple-page-master master-name="opinion-first-page-odd-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="2.0in"
          margin-left="5.5cm" margin-right="5.5cm">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.0in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before
            region-name="opinion-first-page-odd-header"
            extent="0.625in" />
        </fo:simple-page-master>

        <!-- Opinion Body -->
        <!-- Even (Left) -->
        <fo:simple-page-master master="opinion-regular-page-even-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="1.9375in"
          margin-left="2.1875in" margin-right="2.1875in">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.0in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before
            region-name="opinion-regular-page-even-header"
            extent="0.625in" />
          <fo:region-after
            region-name="opinion-regular-page-even-footer"
            extent="0.0in" />
          <fo:region-start
            extent="0.0in" />
          <fo:region-end
            extent="0.0in" />
        </fo:simple-page-master>

        <!-- Odd (Right) -->
        <fo:simple-page-master master-name="opinion-regular-page-odd-master"
          page-width="8.5in" page-height="11.0in"
          margin-top="1.6875in" margin-bottom="1.9375in"
          margin-left="2.1875in" margin-right="2.1875in">
          <fo:region-body
            margin-top="0.626in" margin-bottom="0.0in"
            margin-left="0.0in" margin-right="0.0in" />
          <fo:region-before
            region-name="opinion-regular-page-odd-header"
            extent="0.625in" /> <!-- flow-name="opinion-regular-page-odd-header" -->
          <fo:region-after
            region-name="opinion-regular-page-odd-footer"
            extent="0.0in" /> <!-- flow-name="opinion-regular-page-odd-footer" -->
        </fo:simple-page-master>

        <!-- OPINION PAGE SEQUENCE MASTER -->
        <fo:page-sequence-master master-name="opinion">
          <fo:repeatable-page-master-alternatives>
            <fo:conditional-page-master-reference
              master-reference="opinion-first-page-odd-master"
              page-position="first"
              odd-or-even="odd" />
            <fo:conditional-page-master-reference
              master-reference="opinion-first-page-even-master"
              page-position="first"
              odd-or-even="even" />
            <fo:conditional-page-master-reference
              master-reference="opinion-regular-page-odd-master"
              page-position="any"
              odd-or-even="odd" />
            <fo:conditional-page-master-reference
              master-reference="opinion-regular-page-even-master"
              page-position="any"
              odd-or-even="even" />
          </fo:repeatable-page-master-alternatives>
        </fo:page-sequence-master>
      </fo:layout-master-set>

      <!-- PAGE SEQUENCE // TABLE OF CASES REPORTED -->
      <xsl:for-each select="FrontMatter/TableOfCasesReported">
        <fo:page-sequence master-reference="tocr">
          <fo:static-content flow-name="tocr-first-page-odd-footer">
            <fo:table width="3.875in"
              font-family="Century-Expanded-Regular"
              font-style="normal"
              font-weight="normal"
              font-size="0pt">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.375in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="after">
                  <fo:block text-align="left"></fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="after">
                  <fo:block text-align="center"></fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="after">
                  <fo:block text-align="right">
                    <fo:page-number format="I" />
                  </fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:static-content flow-name="tocr-first-page-even-footer">
            <fo:table width="3.875in"
              font-family="Century-Expanded-Regular"
              font-style="normal"
              font-weight="normal"
              font-size="9pt">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.375in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="after">
                  <fo:block text-align="left">
                    <fo:page-number format="I" />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="after">
                  <fo:block text-align="center"></fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="after">
                  <fo:block text-align="right"></fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:static-content flow-name="tocr-regular-page-odd-header">
            <fo:table width="4.125in"
              font-family="Century-Expanded-Regular"
              font-style="normal"
              font-weight="normal"
              font-size="9pt">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.625in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="before">
                  <fo:block text-align="left"></fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="before">
                  <fo:block text-align="center">
                    TABLE OF CASES REPORTED
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="before">
                  <fo:block text-align="right">
                    <fo:page-number format="I" />
                  </fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:static-content flow-name="tocr-regular-page-even-header">
            <fo:table width="4.125in"
              font-family="Century-Expanded-Regular"
              font-style="normal"
              font-weight="normal"
              font-size="9pt">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.625in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="before">
                  <fo:block text-align="left">
                    <fo:page-number format="I" />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="before">
                  <fo:block text-align="center">
                    TABLE OF CASES REPORTED
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="before">
                  <fo:block text-align="right"></fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:flow flow-name="xsl-region-body">
            <xsl:apply-templates />
          </fo:flow>

        </fo:page-sequence>
      </xsl:for-each>

      <!-- PAGE SEQUENCE // CASES -->
      <xsl:for-each select="Cases/Case">
        <fo:page-sequence master-reference="opinion">
          <fo:static-content flow-name="opinion-first-page-odd-header">
            <fo:table font-size="9pt" width="4.125in">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.625in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="after">
                  <fo:block text-align="left"></fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="after">
                  <fo:block text-align="center" text-transform="uppercase" font-family="Century-Expanded-Regular" font-style="normal" font-weight="normal">
                    <fo:retrieve-marker retrieve-class-name="OT" retrieve-position="last-ending-within-page" />
                  </fo:block>
                  <fo:block text-align="center" space-before="0.15in" space-after="0.1875in">
                    <fo:retrieve-marker retrieve-class-name="InferiorHeader" retrieve-position="last-ending-within-page" />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="before">
                  <fo:block text-align="right" font-family="Century-Expanded-Regular" font-style="normal" font-weight="normal">
                    <fo:page-number />
                  </fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:static-content flow-name="opinion-firt-page-even-header">
            <fo:table font-size="9pt" width="4.125in">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.625in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="before">
                  <fo:block text-align="left" font-family="Century-Expanded-Regular" font-style="normal" font-weight="normal">
                    <fo:page-number />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="after">
                  <fo:block text-align="center" text-transform="uppercase" font-family="Century-Expanded-Regular" font-style="normal" font-weight="normal">
                    <fo:retrieve-marker retrieve-class-name="OT" retrieve-position="last-ending-within-page" />
                  </fo:block>
                  <fo:block text-align="center" font-family="Century-Expanded-Regular" font-style="normal" font-weight="normal" space-before="0.15in" space-after="0.1875in">
                    <fo:retrieve-marker retrieve-class-name="InferiorHeader" retrieve-position="last-ending-within-page" />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="after">
                  <fo:block text-align="right"></fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:static-content flow-name="opinion-regular-page-odd-header">
            <fo:table font-size="9pt" width="4.125in">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.625in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="after">
                  <fo:block text-align="left"></fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="after">
                  <fo:block 
                    text-align="center"
                    font-family="Century-Expanded-Regular"
                    font-style="normal"
                    font-weight="normal">
                    <fo:retrieve-marker
                      retrieve-class-name="CiteHead"
                      retrieve-position="last-ending-within-page" />
                  </fo:block>                
                  <fo:block text-align="center" space-before="0.15in" space-after="0.1875in">
                    <fo:retrieve-marker retrieve-class-name="InferiorHeader" retrieve-position="last-ending-within-page" />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="before">
                  <fo:block text-align="right" font-family="Century-Expanded-Regular" font-style="normal" font-weight="normal">
                    <fo:page-number />
                  </fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:static-content flow-name="opinion-regular-page-even-header">
            <fo:table font-size="9pt" width="4.125in">
              <fo:table-column column-number="1" column-width="0.25in" />
              <fo:table-column column-number="2" column-width="3.625in" />
              <fo:table-column column-number="3" column-width="0.25in" />
              <fo:table-body>
                <fo:table-cell column-number="1" display-align="before">
                  <fo:block text-align="left" font-family="Century-Expanded-Regular" font-style="normal" font-weight="normal">
                    <fo:page-number />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="2" display-align="after">
                  <fo:block text-align="center" font-size="9pt">
                    <fo:retrieve-marker retrieve-class-name="SuperiorHeader" retrieve-position="last-ending-within-page" />
                  </fo:block>
                  <fo:block text-align="center" space-before="0.15in" space-after="0.1875in">
                    <fo:retrieve-marker retrieve-class-name="InferiorHeader" retrieve-position="last-ending-within-page" />
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell column-number="3" display-align="after">
                  <fo:block text-align="right"></fo:block>
                </fo:table-cell>
              </fo:table-body>
            </fo:table>
          </fo:static-content>

          <fo:static-content flow-name="xsl-footnote-separator">
            <fo:block>
              <fo:leader leader-pattern="rule" leader-length="25%" rule-style="solid" rule-thickness="0.5pt"/>
            </fo:block>
          </fo:static-content>
          <fo:flow flow-name="xsl-region-body">
            <xsl:apply-templates />
          </fo:flow>

        </fo:page-sequence>
      </xsl:for-each>

    </fo:root>
  </xsl:template>

  <!-- 
    FOOTNOTE TEMPLATES 
  -->
  <xsl:template match="Cases//Footnote">
    <fo:footnote>
      <!-- 
        <fo:inline> Superscripts inline footnote number and makes it 8pt 
      -->
      <fo:inline
        font-family="Century-Expanded-Regular"
        font-style="normal"
        font-weight="normal"
        font-size="8pt"
        baseline-shift="37.5%">
        <!-- 
          Footnote counter; level set to "single" so counter resets for each opinion 
        -->
        <xsl:number
          level="single"
          count="Footnote"
          format="1" />
      </fo:inline>
      <fo:footnote-body>
        <fo:list-block
          provisional-distance-between-starts="5pt"
          provisional-label-separation="5pt">
          <fo:list-item>
            <fo:list-item-label
              end-indent="label-end()"
              baseline-shift="super"
              font-size="6pt">
              <fo:block>
                <xsl:number level="single" count="Footnote" format="1" />
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body start-indent="body-start()">
              <fo:block font-size="9pt" line-height="10pt">
                <xsl:apply-templates />
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
        </fo:list-block>
      </fo:footnote-body>
    </fo:footnote>
  </xsl:template>

  <!-- ASTERISK FOOTNOTES -->
  <xsl:template match="Cases/Case//Footnote[@type='ast']">
    <fo:footnote>
      <fo:inline
        font-family="Century-Expanded-Regular"
        font-style="normal"
        font-weight="normal"
        font-size="8pt"
        baseline-shift="37.5%">
        <xsl:text>*</xsl:text>
      </fo:inline>
      <fo:footnote-body>
        <fo:list-block 
          text-indent="0.125in"
          provisional-distance-between-starts="5pt"
          provisional-label-separation="5pt">
          <fo:list-item>
            <fo:list-item-label
              end-indent="label-end()"
              baseline-shift="super"
              font-size="6pt">
              <fo:block>
                <xsl:text>*</xsl:text>
              </fo:block>
            </fo:list-item-label>
            <fo:list-item-body>
              <fo:block
                font-size="9pt"
                line-height="10pt">
                <xsl:apply-templates />
              </fo:block>
            </fo:list-item-body>
          </fo:list-item>
        </fo:list-block>
      </fo:footnote-body>
    </fo:footnote>
  </xsl:template>

<!-- 
  In the following two templates, note the difference in the @text-indent attribute.
  The reason the first paragraph @text-indent in a footnote is 0.5in more than all 
  paragraphs that follow is because the first paragraph must also ensure there is 
  enough room for the footnote number. Failure to account for this will cause the
  footnote text and the footnote number to overlap.
-->

  <xsl:template match="//Footnote/P[1]">
    <fo:block text-indent="0.175in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="//Footnote/P[position()>1]">
    <fo:block text-indent="0.125in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

<!-- TABLE OF CASES REPORTED TEMPLATES -->

  <xsl:template match="FrontMatter/TableOfCasesReported/Title">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      text-align="center" text-transform="uppercase"
      space-after="0.25in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="FrontMatter/TableOfCasesReported/Table">
    <fo:block
      font-family="Century-Expanded-regular"
      font-style="normal" font-weight="normal">
      <fo:block>
        <xsl:for-each select="//Name[@class='tocr']">
          <xsl:sort select="." />
          <fo:block text-align-last="justify">
            <fo:basic-link internal-destination="{generate-id(../Name[@class='in-text'])}">
              <xsl:copy-of select="." />
              <xsl:apply-templates />
              <fo:leader leader-pattern="dots" />
              <fo:page-number-citation ref-id="{generate-id(../Name[@class='in-text'])}" />
            </fo:basic-link>
          </fo:block>
        </xsl:for-each>
      </fo:block>
    </fo:block>
  </xsl:template>

  <xsl:template match="FrontMatter/TableOfCasesReported/Table/Name[@class='tocr']">
    <fo:block>
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="FrontMatter/TableOfCasesReported/Table/Name/I">
    <fo:inline
      font-family="Century-Expanded-Italic"
      font-style="italic" font-weight="normal">
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <xsl:template match="FrontMatter/TableOfCasesReported/Table/I">
    <fo:inline
      font-family="Century-Expanded-Italic"
      font-style="italic" font-weight="normal">
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>


<!-- HEADER TEMPLATES -->

  <xsl:template match="//SuperiorHeader">
    <fo:block>
      <fo:marker marker-class-name="SuperHead">
        <fo:block>
          <fo:inline
            font-family="Century-Expanded-Regular"
            font-style="normal" font-weight="normal"
            text-transform="uppercase">
            <xsl:value-of select="party[position() = 1]" />
          </fo:inline>
          <fo:inline>
            <xsl:text> </xsl:text>
          </fo:inline>
          <fo:inline
            font-family="Century-Expanded-Italic"
            font-style="italic" font-weight="normal">
            <xsl:value-of select="Versus" />
          </fo:inline>
          <fo:inline>
            <xsl:text> </xsl:text>
          </fo:inline>
          <fo:inline
            font-family="Century-Expanded-Regular"
            font-style="normal" font-weight="normal"
            text-transform="uppercase">
            <xsl:value-of select="party[position() = last()]" />
          </fo:inline>
        </fo:block>
      </fo:marker>
    </fo:block>
  </xsl:template>

  <xsl:template match="//CiteAs">
    <fo:block>
      <fo:marker marker-class-name="CiteHead">
        <fo:block>
          <fo:inline
            font-family="Century-Expanded-Regular"
            font-style="normal" font-weight="normal">
            <xsl:text>Cite as: </xsl:text>
          </fo:inline>
          <fo:inline
            font-family="Century-Expanded-Regular"
            font-style="normal" font-weight="normal">
            <xsl:value-of select="." />
          </fo:inline>
        </fo:block>
      </fo:marker>
    </fo:block>
  </xsl:template>

  <xsl:template match="//InferiorHeader">
    <fo:block>
      <fo:marker marker-class-name="InferHead">
        <fo:block
          font-family="Century-Expanded-Regular"
          font-style="normal" font-weight="normal">
          <xsl:value-of select="." />
        </fo:block>
      </fo:marker>
    </fo:block>
  </xsl:template>

  <xsl:template match="//tocr">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      font-size="10pt">
    </fo:block>
  </xsl:template>

  <xsl:template match="//Case">
    <fo:block id="{generate-id(.)}">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Name[@class='in-text']">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      text-align="center" font-size="10pt"
      space-before="0.4cm" id="{generate-id(.)}">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Name[@class='in-text']/Party">
    <fo:inline
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      font-variance="small-caps">
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <xsl:template match="Cases/Case/Name[@class='in-text']/Versus">
    <fo:inline
      font-family="Century-Expanded-Italic"
      font-style="italic" font-weight="normal">
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <xsl:template match="Cases/Case/Name[@class='tocr']">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      font-size="10pt">
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Name/[@class='tocr']/I">
    <fo:inline
      font-family="Century-Expanded-Italic"
      font-style="italic" font-weight="normal"
      font-size="10pt">
    </fo:inline>
  </xsl:template>

  <xsl:template match="Cases/Case/AppealFrom">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      text-align="center" text-transform="uppercase"
      font-size="9pt" space-before="0.1875in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Syllabus/Facts/P[@class='first']">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      start-indent="0.125in" text-indent="-0.125in"
      text-align="justify" font-size="9pt">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Syllabus/Facts/P[@class='reg']">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      start-indent="0.125in" text-indent="0.125in"
      font-size="9pt" text-align="justify">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Syllabus/Held/P[@class='first']">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      start-indent="0.125in" text-indent="-0.125in"
      text-align="justify" font-size="9pt">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Syllabus/Held/P[@class='reg']">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      start-indent="0.125in" text-indent="0.125in"
      font-size="9pt" text-align="justify">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Syllabus/Disposition">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      font-size="9pt">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Attorneys/P">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      font-size="11pt" text-align="justify"
      space-before="0.1875in" space-after="0.0625in"
      text-indent="0.125in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Opinion/P">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      font-size="11pt" text-indent="0.125in"
      text-align="justify">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Opinion/P/Author">
    <fo:block
      space-before="0.125in"
      space-after="0.0625in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

<!-- BLOCKQUOTES -->
  <xsl:template match="Cases/Case/Opinion/P/Blockquote[@first-line-indent='false']">
    <fo:block
      space-before="0.0625in"
      space-after="0.0625in"
      start-indent="0.3125in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <xsl:template match="Cases/Case/Opinion/P/Blockquote[@first-line-indent='true']">
    <fo:block
      space-before="0.0625in"
      space-after="0.0625in"
      start-indent="0.3125in"
      text-indent="0.125in">
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

<!-- 

=================================================
:::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::GENERALLY  APPLICABLE::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::
=================================================

-->
  <xsl:template match="//starPage">
    <fo:inline 
      font-family="Century-Expanded-Bold"
      font-style="normal" font-weight="bold">
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <xsl:template match="//threeStarDivider">
    <fo:block
      font-family="Century-Expanded-Regular"
      font-style="normal" font-weight="normal"
      font-size="11pt" text-align="center"
      space-before="0.125in" space-after="0.125in">
      <xsl:text>*&#8195;&#8195;*&#8195;&#8195;*</xsl:text>
      <xsl:apply-templates />
    </fo:block>
  </xsl:template>

  <!--
  Italic - Use for italicized text found in case names or titles of works
  -->
  <xsl:template match="//I">
  <!-- GOOD -->
    <fo:inline 
      font-family="Century-Expanded-Italic" 
      font-style="italic" font-weight="normal">
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- 
  Emphasis - Use for text that would require an "emphasis added" 
  parenthetical if it was cited.
  -->
  <xsl:template match="//em">
    <fo:inline 
      font-family="Century-Expanded-Italic" 
      font-style="italic" font-weight="normal">
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>


  <!-- 
  En Dash
  -->
  <xsl:template match="//ndash">
    <fo:inline>
      <xsl:text>&#8211;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!--
  Em Dash
  -->
  <xsl:template match="//mdash">
    <fo:inline>
      <xsl:text>&#8212;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!--
  & [Ampersand]
  -->
  <xsl:template match="//amp">
    <fo:inline>
      <xsl:text>&#38;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- $ [Dollar Sig] -->
  <xsl:template match="//dollar">
    <fo:inline>
      <xsl:text>&#36;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- ‘ [Left Single Quote] -->
  <xsl:template match="//lsquo">
    <fo:inline>
      <xsl:text>&#8216;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- ’ [Right Single Quote/Apostrophe] -->
  <xsl:template match="//rsquo">
    <fo:inline>
      <xsl:text>&#8217;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <xsl:template match="//quote">
    <fo:inline>
      <xsl:text>&#8220;</xsl:text>
      <xsl:value-of select="." />
      <xsl:text>&#8221;</xsl:text>
      <!-- <xsl:apply-templates /> -->
    </fo:inline>
  </xsl:template>

  <!-- “ [Left Double Quote] -->
  <xsl:template match="//ldquo">
    <fo:inline>
      <xsl:text>&#8220;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- ” [Right Double Quote] -->
  <xsl:template match="//rdquo">
    <fo:inline>
      <xsl:text>&#8221;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- § [Section Symbol] -->
  <xsl:template match="//sect">
    <fo:inline>
      <xsl:text>&#167;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- ¶ [Pilcrow (Paragraph Symbol)] -->
  <xsl:template match="//pilcrow">
    <fo:inline>
      <xsl:text>&#182;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- Non-Breaking Space -->
  <xsl:template match="//nbsp">
    <fo:inline>
      <xsl:text>&#160;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- En Space -->
  <xsl:template match="//nspace">
    <fo:inline>
      <xsl:text>&#8194;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

  <!-- Em Space -->
  <xsl:template match="//mspace">
    <fo:inline>
      <xsl:text>&#8195;</xsl:text>
      <xsl:apply-templates />
    </fo:inline>
  </xsl:template>

</xsl:stylesheet>