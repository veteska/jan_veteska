<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/konfigurace_wowka">
    {
        "Konfigurace WoWka":
        {
            "Nastaveni grafiky":<xsl:for-each select="nastaveni_grafiky">
            {
                "Obecne":<xsl:for-each select="obecne">
                {
                    "Rozliseni": "<xsl:value-of select="rozliseni"/>",
                    "Refresh": "<xsl:value-of select="refresh"/>",
                    "Rezim zobrazeni": "<xsl:value-of select="rezim_zobrazeni"/>",
                    "Multisampling": "<xsl:value-of select="multisampling"/>"
                    <!--"VSync": "<xsl:value-of select="vsync"/>",
                    
                    "Hustota_zalidneni": "<xsl:value-of select="hustota_zalidneni"/>",
                    "Stiny": "<xsl:value-of select="stiny"/>",
                    "Krajina": "<xsl:value-of select="krajina"/>",
                    "Voda": "<xsl:value-of select="voda"/>",
                    "Hustota travy": "<xsl:value-of select="hustota_travy"/>",
                    "Kvalita textur": "<xsl:value-of select="kvalita_textur"/>",
                    "Uroven detailu": "<xsl:value-of select="uroven_detailu"/>"-->
                },</xsl:for-each>
                "Efekty sveta":<xsl:for-each select="efekty_sveta">
                {
                    "Motion Blur": "<xsl:value-of select="teren_vzdalenost"/>",
                    "Anti-Aliasing terennich textur": "<xsl:value-of select="teren_textury-aliasing"/>",
                    "Detaily textur": "<xsl:value-of select="texture_detaily"/>",
                    "Pocasi": "<xsl:value-of select="pocasi"/>",
                    "Vyostrovani": "<xsl:value-of select="vyostrovani"/>",
                    "Uroven detailu": "<xsl:value-of select="level_of_detail"/>",
                    "Anti-Aliasing": "<xsl:value-of select="anti-aliasing"/>",
                    "Bloom": "<xsl:value-of select="bloom"/>",
                    "Svetelne paprsky": "<xsl:value-of select="svetelne_paprsky"/>"
                },</xsl:for-each>
                "Stiny":<xsl:for-each select="stiny">
                {
                    "Teren": "<xsl:value-of select="teren"/>",
                    "Mrtvy efekt": "<xsl:value-of select="mrtvy_effect"/>",
                    "Pocasi": "<xsl:value-of select="stiny_pocasi"/>"
                },</xsl:for-each>
                "Gamma": "<xsl:value-of select="gamma"/>"
            },</xsl:for-each> 
            
            <xsl:for-each select="uzivatelsky_profil[level >= 10]">
            "Uzivatelsky profil":
            {
                "Jmeno": "<xsl:value-of select="jmeno"/>",
                "Level": "<xsl:value-of select="level"/>",
                "Nastaveni profilu":<xsl:for-each select="nastaveni_profilu">
                {
                    "Zvuk":<xsl:for-each select="zvuk">
                    {
                        "Celkova hlasitost": "<xsl:value-of select="celkova_hlasitost"/>%",
                        "Hlasitost hudby": "<xsl:value-of select="hlasitost_hudby"/>%",
                        "Hlasitost zvuku": "<xsl:value-of select="hlasitost_zvuku"/>%",
                        "Hlasitost dialogu": "<xsl:value-of select="hlasitost_dialogu"/>%"
                    },</xsl:for-each>
                    "Prevraceni kamery":<xsl:for-each select="prevraceni_kamery">
                    {
                        "Mys":<xsl:for-each select="mys">
                        {
                            "Osa X": "<xsl:value-of select="@osaX"/>",
                            "Osa Y": "<xsl:value-of select="@osaY"/>"                            
                        },</xsl:for-each>
                        "Ovladac":<xsl:for-each select="ovladac">
                        {
                            "Osa X": "<xsl:value-of select="@osaX"/>",
                            "Osa Y": "<xsl:value-of select="@osaY"/>"                            
                        }</xsl:for-each>
                    },</xsl:for-each>
                    "Ovladani":<xsl:for-each select="ovladani">
                    {
                        "Citlivost mysi":<xsl:for-each select="citlivost_mysi">
                        {
                            "V rozhrani": "<xsl:value-of select="@vRozhrani"/>",
                            "Ve hre": "<xsl:value-of select="@veHre"/>"                            
                        },</xsl:for-each>
                        "Click to move": "<xsl:value-of select="clickt_to_move"/>",
                        "Auto odstraneni AFK": "<xsl:value-of select="auto_clear_AFK"/>",
                        "Blokovani obchodu": "<xsl:value-of select="block_trades"/>",
                        "Auto self cast": "<xsl:value-of select="auto_self_cast"/>"
                    },</xsl:for-each>
                    "Zobrazeni":<xsl:for-each select="zobrazeni">
                    {
                        "Vyukove zpravy": "<xsl:value-of select="vyukove_zpravy"/>",
                        "Jmena hracu": "<xsl:value-of select="jmena_hracu"/>",
                        "Titul hrace": "<xsl:value-of select="hracovi_tituly"/>",
                        "Jmena NPC": "<xsl:value-of select="npc_jmena"/>",
                        "Zobrazeni vlastniho jmena": "<xsl:value-of select="zobrazeni_vlastniho_jmena"/>",
                        "Zobrazeni helmy": "<xsl:value-of select="zobrazeni_helmy"/>",
                        "Zobrazeni plaste": "<xsl:value-of select="zobrazeni_plaste"/>",
                        "Instant quest text": "<xsl:value-of select="instatnt_quest_text"/>",
                        "Delka buffu": "<xsl:value-of select="buff_durations"/>"
                    },</xsl:for-each>
                    "Jazyk":<xsl:for-each select="jazyk">
                    {
                        "Dialogy": "<xsl:value-of select="@dialogy"/>",
                        "Texty": "<xsl:value-of select="@texty"/>",
                        "Titulky": "<xsl:value-of select="titulky"/>"
                    },</xsl:for-each>
                    "Rozsirene moznosti":<xsl:for-each select="rozsirene_moznosti">
                    {
                        "Chat": "<xsl:value-of select="chat"/>",
                        "Zmena chatu": "<xsl:value-of select="zamceni_chatu"/>",
                        "Zobrazeni bublin chatu": "<xsl:value-of select="zobrani_bublin_chatu"/>",
                        "Combat text":<xsl:for-each select="combat_text">
                        {
                            "Damage": "<xsl:value-of select="dmg"/>",
                            "Healing": "<xsl:value-of select="healing"/>",
                            "Zobrazeni aury": "<xsl:value-of select="zobrazeni_aury"/>",
                            "Zobrazeni reputace": "<xsl:value-of select="rozbrazeni_reputace"/>",
                            "Zobrazeni pratelskeho healu": "<xsl:value-of select="zobrazeni_praelskeho_healu"/>",
                            "Honory": "<xsl:value-of select="honory"/>",
                            "Zobrazeni dodge": "<xsl:value-of select="rozbrazeni_dodge"/>"
                        },</xsl:for-each>
                        "Zobrazeni stavu":<xsl:for-each select="zobrazeni_stavu">
                        {
                            "Zivoty": "<xsl:value-of select="@zivot"/>",
                            "Mana": "<xsl:value-of select="@mana"/>",
                            "Energie": "<xsl:value-of select="@energie"/>"
                        },</xsl:for-each>
                        "Zobrazeni napovedy": "<xsl:value-of select="zobrazeni_napovedy"/>",
                        "Nahled poskozenych predmetu": "<xsl:value-of select="nahled_poskozenychPredmetu"/>"
                    }</xsl:for-each>
                }</xsl:for-each>
            }<xsl:if test="position() != last()">,</xsl:if></xsl:for-each> 
        }
    }    
    </xsl:template>
</xsl:stylesheet>
