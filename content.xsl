<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>MTS 2.0 Documentation</title>
<link href="content.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div>
		<div class="main">
			<h1><xsl:value-of select="page/title"/></h1>
			<xsl:for-each select="page/section">
				<h2><xsl:value-of select="title"/></h2>
				<xsl:for-each select="paragraph">
					<p><xsl:value-of select="."/></p>
				</xsl:for-each>


				<xsl:for-each select="revision">
					<span class="revision"><a href="http://svnhosting.org:8000/websvn/listing.php?repname=mts2&amp;path=%2F&amp;rev={@rev}&amp;sc=1" target="_blank"><b>Revision <xsl:value-of select="@rev"/>:</b></a></span>
					<xsl:for-each select="change">
						<span class="change"><img style="margin-right: 8px;" src="img_change.png"/><xsl:value-of select="."/></span>
					</xsl:for-each>
				</xsl:for-each>



				<xsl:for-each select="link">
					<a style="margin-left: 40px;" href="{.}" target="new"><xsl:value-of select="."/></a><br/>
				</xsl:for-each>


				<xsl:for-each select="attributes">
					<div style="margin-right: 15px;">
					<table class="attributes">
						<tr>
							<th width="110">Name</th>
							<th>Description</th>
							<th width="60">Type</th>
							<th width="60">Required</th>
							<th width="60">Evaluated</th>
							<th width="100">Default value</th>
						</tr>
					<xsl:for-each select="attribute">
						<tr>
							<td><xsl:value-of select="@name"/></td>
							<td><xsl:value-of select="."/></td>
							<td><xsl:value-of select="@datatype"/></td>
							<td><xsl:value-of select="@required"/></td>
							<td><xsl:value-of select="@evaluated"/></td>
							<td><xsl:value-of select="@defaultvalue"/></td>
						</tr>
					</xsl:for-each>
					</table></div>
				</xsl:for-each>



				<xsl:for-each select="keywords">
					<div style="margin-right: 15px; display: inline;">
					<p><b>Keywords for the attribute '<xsl:value-of select="@attribute"/>'</b></p>
					<table class="keywords">
						<tr>
							<th width="110">Name</th>
							<th>Description</th>
						</tr>
					<xsl:for-each select="keyword">
						<tr>
							<td><xsl:value-of select="@name"/></td>
							<td><xsl:value-of select="."/></td>
						</tr>
					</xsl:for-each>
					</table></div><br/>
				</xsl:for-each>



				<xsl:for-each select="identifiers">
					<div style="margin-right: 15px; display: inline;">
					<table class="identifiers">
						<tr>
							<th width="110">Identifier</th>
							<th>Description</th>
						</tr>
					<xsl:for-each select="identifier">
						<tr>
							<td><xsl:value-of select="@name"/></td>
							<td><xsl:value-of select="."/></td>
						</tr>
					</xsl:for-each>
					</table></div><br/>
				</xsl:for-each>

				<xsl:for-each select="example">
					<span class="example"><xsl:value-of select="@title"/></span>
					<pre><xsl:value-of select="."/></pre>
				</xsl:for-each>


				<xsl:for-each select="code">
					<span class="code"><xsl:value-of select="@title"/></span>
					<pre class="codepre"><xsl:value-of select="."/></pre>
				</xsl:for-each>


				<xsl:for-each select="members">
					<div style="margin-right: 15px; display: inline;">
					<table class="members">
						<tr>
							<th width="150">Member</th>
							<th width="250">Contact</th>
						</tr>
					<xsl:for-each select="member">
						<tr>
							<td class="member"><xsl:value-of select="@name"/></td>
							<td class="member"><a href="mailto:{@email}"><xsl:value-of select="@email"/></a></td>
						</tr>
					</xsl:for-each>
					</table></div><br/>
				</xsl:for-each>

			</xsl:for-each>
		</div> 
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>