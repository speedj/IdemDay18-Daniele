<span class="menu-title" style="display: none">Introduction</span>
## Migrazione da IdP v2 a v3
##### <span style="font-family:Helvetica Neue; font-weight:bold">Aggiornamento IdP e nuovi standard</span>
Daniele Albrizio - albrizio@units.it - IDEM Day 2018


---


<span class="menu-title" style="display: none">Perché migrare</span>
## Perché migrare
* versione 2 EoL 31.7.2016
* Cogliere l'occasione per abbandonare SAML1 per SAML2
* GDPR compliance

+++

<span class="menu-title" style="display: none">GDPR</span>
## Consenso esplicito
* Consent
 * Informativa (ToU) al primo accesso
 * Consenso al rilascio degli attributi prima di rilasciarli all'SP insieme al
 * link all'informativa sul trattamento dati dell'SP (se pubblicato nei metdati dell'SP - mdui:PrivacyStatementURL)

+++

## Consenso esplicito
* **Scelta** dell'utente **registrata** nel log.
* I consensi specifici restano in un **coockie sicuro** sul browser (a scadenza programmabile lato IdP).
* **Al cambiare** del testo nel ToU (hash) o del set di attributi da rilasciare, può essere *ripresentata la pagina di consenso automaticamente*.

---


![Image](./assets/md/assets/IdPlogin.png)
+++
![Image](./assets/md/assets/ToU.png)
+++
![Image](./assets/md/assets/attributeConsent.png)
+++
![Image](./assets/md/assets/attributeConsent1.png)


---


<span class="menu-title" style="display: none">Nuova architettura</span>

## Nova arcihtettura

* Container passa da Tomcat a Jetty
 * Molto più leggero. Più immediato per chi non ha esperienza di Tomcat.
* OpenJDK
* Secure cookies client-side
 * rigenerare con seckeygen a cron ogni giorno la chiave di cifratura


---

<span class="menu-title" style="display: none">Fringe benefits</span>

## Fringe benefits

* Miglior supporto ldap/AD
 * connection pooling
 * ldap backend type distinti fra openldap e AD

* Miglior supporto dei backend database
 * gestione migliore del failover


---


## Fringe benefits

* idp-process.log: Messaggi di warning molto più chiari
* Condizioni di errore user-facing maggiormente gestite (user experience più confortevole)
* Interfaccia utente responsive web design (per tutti i dispositivi)
 * Interfaccia completamente (e facilmente) internazionalizzabile
 * Testo modificabile runtime (reload automatico)


---


## Fringe benefits


* FileBackedHTTPMetadataProvider
 * Carica metadati via web e li tiene in memoria anche dopo il riavvio

* EntityRoleWhiteListFilter
 * https://wiki.shibboleth.net/confluence/display/IDP30/EntityRoleWhiteListFilter
 * filtra i metadati ad esempio per ruolo (tutti gli sp per maggiore performance e impronta in memoria)


---


## Fringe benefits

* Reloadable services
 * Attribute Filter
 * Attribute Resolver
 * Credentials
 * Metadata Providers
 * UI properties
 * Logging parameters


---


## Fringe benefits

* Logging
 * Mail alert degli errori
 * Rotazione e compressione dei log / cancellazione dei vecchi file
 * Recovery da situazioni di I/O failure

* Supporto nativo CAS


---


## dire o no?
## Fringe benefits

* GCM encryption per gli SP che la supportano
* Supporto per client ECP (non-browser)


---


<span class="menu-title" style="display: none">Extra Power</span>

## Extra Power

Power Features


---


## Extra Power
* Profili di relying parties basati su gruppi, tag, metadati su cui applicare particolari...

* AFP
* consent policies
* algoritmi di crittografia personalizzati
* configurazioni SLO
* ecc...


---


## Extra Power
* dipendenze degli attributi (Dependency) in modo da fare il merge di attributi con id sorgenti differenti
* Tipo di autenticazione selezionabile per singolo SP
* SSO disabilitabile per IP o con checkbox sulla pagina di login (vedi SPID)
* Supporto per blacklists e whitelist di algoritmi di firma e crittografia (Poodle docet)


---


## Warnings

* APIs non backward-compatibili: estensioni personalizzate dovranno molto probabilmente essere aggiornate per funzionare con la versione 3 (scripted attribute e webflow)

* Attribute Filtering: L'attributo ID è ora obbligatorio per tutte le policy (era opzionale)

* Molte funzionalita' disabilitate di default in caso di upgrade (consent, ecc...)


---


## Clustering

* Terracotta non piu' supportato
* Sincronizzare le chiavi del keystore per i secure coockies
* db (NameID:persistent) su un cluster esterno
* memcached consigliato in caso di Single Logout


---


## Single Logout
https://wiki.shibboleth.net/confluence/display/IDP30/LogoutConfiguration

* SLO: session tracking lato server e non basta 
 * HTML LocalStorage
 * server-side storage service JPAStorageService o MemcachedStorageService


---

## Scorsa sull' XML
come si presentano le configurazioni

---


* Tricks
 * Backend multipli ldap
 * filtro epEntitlement a seconda del requestor


---


* Pratiche di federazione
 * ??Supporto per blacklists e whitelist di algoritmi di firma e crittografia (Poodle docet)
 * AFP da resource registry
 * AFP CoCo
 * AFP r+s
 * AFP Idem / onlyIfRequired
 * AFP order e overrides
 * lingua di default in mvc-beans.xml ??


---


* Run e aggiustamenti successivi della configurazione secondo i warning molto esaustivi dell'idp-process.log



---


## Filtri condizionali

 Tramite l'introduzione di PolicyRequirementRule

+++

<span class="menu-title" style="display: none">edugain</span>

attribute-filter.xml - PolicyRequirementRule

```xml
<AttributeFilterPolicy>
 <PolicyRequirementRule xsi:type="InEntityGroup"
      groupID="http://edugain.org/" />
 <AttributeRule attributeID="eduPersonAffiliation">
  <PermitValueRule xsi:type="OR">
   <Rule xsi:type="Value" value="faculty" ignoreCase="true" />
   <Rule xsi:type="Value" value="student" ignoreCase="true" />
   <Rule xsi:type="Value" value="staff" ignoreCase="true" />
   <Rule xsi:type="Value" value="alum" ignoreCase="true" />
   <Rule xsi:type="Value" value="member" ignoreCase="true" />
   <Rule xsi:type="Value" value="affiliate" ignoreCase="true" />
   <Rule xsi:type="Value" value="employee" ignoreCase="true" />
   <Rule xsi:type="Value" value="library-walk-in" ignoreCase="true" />
  </PermitValueRule>
 </AttributeRule>
 <AttributeRule attributeID="mail">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="commonName">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="displayName">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="schacHomeOrganization">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="schacHomeOrganizationType">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
 <AttributeRule attributeID="eduPersonPrincipalName">
  <PermitValueRule xsi:type="ANY" />
 </AttributeRule>
</AttributeFilterPolicy>

```
<span class="code-presenting-annotation fragment current-only" data-code-focus="2">Conditional filter</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="2-3">Conditional filter</span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="1-18"></span>
<span class="code-presenting-annotation fragment current-only" data-code-focus="15-30"></span>

+++

<span class="menu-title" style="display: none">IDEM</span>

attribute-filter.xml - PolicyRequirementRule

```xml
<!-- Rule for IDEM SPs -->
<AttributeFilterPolicy id="releaseToIDEM">
 <PolicyRequirementRule xsi:type="RegistrationAuthority"
      registrars="http://www.idem.garr.it/"/>

 <!-- Attributes defined by "Specifiche Tecniche per la Compilazione e l'uso degli Attr
ibuti" version 2012 + modifiche -->
 <AttributeRule attributeID="displayName">
  <PermitValueRule xsi:type="AttributeInMetadata" onlyIfRequired="true" />
 </AttributeRule>
 <AttributeRule attributeID="surname">
  <PermitValueRule xsi:type="AttributeInMetadata" onlyIfRequired="true" />
 </AttributeRule>
 <AttributeRule attributeID="givenName">
  <PermitValueRule xsi:type="AttributeInMetadata" onlyIfRequired="true" />
 </AttributeRule>
[...]
```




---
<span class="menu-title" style="display: none">Copyleft</span>

## Copyleft

![Image](./assets/md/assets/CC-BY-NC-SA.png)

<span style="font-size:0.6em; color:gray">
Quest'opera è stata rilasciata con licenza Creative Commons Attribuzione - Non
commerciale - Condividi allo stesso modo 3.0 Italia. Per leggere una copia della
licenza visita il sito web http://creativecommons.org/licenses/by-nc-sa/3.0/it/ o
spedisci una lettera a Creative Commons, PO Box 1866, Mountain View, CA 94042,
USA.</span>
<span style="font-size:0.6em; color:gray">
Alcune immagini hanno licenze d’uso differenti e sono indicate sulle immagini
stesse.</span>


---


<span class="menu-title" style="display: none">Go Fullscreen</span>
## Tip!

- Use GitHub Flavored Markdown
For Slide Content Creation
https://guides.github.com/features/mastering-markdown/

See [GitPitch Wiki](https://github.com/gitpitch/gitpitch/wiki/Code-Presenting) for details.

