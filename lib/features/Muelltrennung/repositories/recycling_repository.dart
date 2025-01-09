class RecyclingRepository {
  // Diese Methode gibt die Recycling-Texte zurück
  List<String> getYellowRecyclingText() {
    return [
      'In die Gelbe Tonne gehört:',
      '• Kunststoffverpackungen (z.B. Folien, Becher, Flaschen, Tüten)',
      '• Kunststoffverpackungen (z.B. Joghurtbecher, Frischhalteboxen, Dosen)',
      '• Verpackungen aus Metall (z.B. Konservendosen, Getränkedosen, Alufolie)',
      '• Tetra Paks (Verpackungen für Säfte, Milch)',
      '• Styropor (z.B. Verpackungschips, Polystyrolplatten)',
      '• Plastikfolien (z.B. Obst- und Gemüseverpackungen)',
      '• Plastiktüten und -beutel (z.B. Einkaufstüten, Luftpolsterfolie)',
      '• Blisterverpackungen (z.B. Medikamentenverpackungen)',
      'Weitere Hinweise:',
      '• WICHTIG: Nur leere Verpackungen ohne Rückstände (z.B. Essensreste oder Flüssigkeiten) einwerfen!',
      '• Nicht in die Gelbe Tonne: Glas, Papier, Bioabfall, Restmüll!',
    ];
  }

  // Diese Methode gibt eine Liste der Abfälle zurück, die in die braune Tonne gehören
  List<String> getBrownRecyclingText() {
    return [
      'In die braune Tonne gehört:',
      '• Obst- und Gemüseabfälle (z.B. Apfelschalen, Bananenschalen, Kartoffelschalen)',
      '• Küchenabfälle (z.B. Kaffeefilter, Teebeutel, Eierschalen)',
      '• Gartenabfälle (z.B. Gras, Laub, Strauchschnitt)',
      '• Verdorbene Lebensmittel (z.B. Brot, verdorbenes Obst und Gemüse)',
      '• Blumen und Pflanzenreste (z.B. abgestorbene Blumen, Blumensträuße)',
      '• Tierische Abfälle (z.B. Knochenreste, Fischgräten, Fleischreste)',
      '• Holzabfälle (z.B. unbehandeltes Holz, Holzspäne)',
      '• Papiertücher, Servietten (sofern sie keine Chemikalien oder starke Reinigungsmittel enthalten)',
      '• Reste von Nahrungsmitteln (z.B. Salatreste, Teigreste)',
      '',
      'Wichtige Hinweise:',
      '• Der Biomüll muss in einer durchlässigen Tüte oder Papier verpackt sein, keine Plastiktüten verwenden!',
      '• Keine Tierkot, Windeln oder Asche in die braune Tonne werfen!',
      '• Keine Pflanzen mit Erde oder mit Düngemitteln behandelte Pflanzen!',
    ];
  }

  List<String> getBlackRecyclingText() {
    return [
      'In die Restmülltonne gehört:',
      '• Zigarettenkippen und -filter',
      '• Windeln, Inkontinenzprodukte und Tampons',
      '• Staubsaugerbeutel (sofern sie keine Recyclingmaterialien enthalten)',
      '• Papierhandtücher und Taschentücher (wenn sie stark verschmutzt sind)',
      '• Beschichtetes oder beschreibbares Papier (z.B. Geschenkpapier, Notizzettel)',
      '• Benutzte Hygieneprodukte (z.B. Binden, Wattestäbchen)',
      '• Gebrauchte Putzlappen und Haushaltstücher',
      '• Kaugummis',
      '• Kinderspielzeug aus Plastik, das nicht recycelt werden kann',
      '• Alte Kleidung, die nicht weiterverwendet werden kann (z.B. zerrissen oder stark verschmutzt)',
      '• Pappe, die mit Essensresten verschmutzt ist',
      '• Asche von Kaminen (in kleinen Mengen und nur, wenn sie kalt ist)',
      '• Gebrauchter Filter aus Kaffeemaschinen (wenn nicht biologisch abbaubar)',
      '• Kunststoffverpackungen, die nicht in die Gelbe Tonne gehören (z.B. nicht recycelbare Kunststoffe)',
      '• Staub und Dreck aus der Wohnung, die nicht durch den Staubsaugerbeutel aufgefangen werden',
      '• Verschmutzte Verpackungen (z.B. Dosen, Tetra Paks mit Resten)',
      '• Reste von Zement oder Mörtel',
      '',
      'Wichtige Hinweise:',
      '• Achten Sie darauf, dass keine gefährlichen Abfälle wie Batterien, Elektrogeräte oder Medikamente in den Restmüll gelangen!',
      '• Restmüll sollte immer in einem festen Sack oder in einem stabilen Behälter verpackt sein, um eine sichere Entsorgung zu gewährleisten.',
      '• Restmüll ist für alles, was nicht anderweitig recycelt werden kann oder keinen Wert für die Wiederverwertung hat.',
    ];
  }

  List<String> getBlueRecyclingText() {
    return [
      'In die blaue Papiertonne gehört:',
      '• Zeitungen und Zeitschriften',
      '• Kartonverpackungen (z.B. Versandkartons, Verpackungen von Elektronik)',
      '• Pappe (z.B. Pizzakartons, Zigarettenverpackungen)',
      '• Schreibpapier, Kopierpapier, Druckerpapier',
      '• Kataloge, Prospekte und Flyer',
      '• Bücher und Heftmappen (wenn sie keine Plastikbestandteile enthalten)',
      '• Briefumschläge ohne Fenster',
      '• Notizblöcke, Notizzettel, Post-Its (sofern keine Folien oder Klebestreifen enthalten sind)',
      '• Papierhüllen von Milch- oder Saftverpackungen (Tetra Paks)',
      '• Altpapier (z.B. alte Rechnungen, Briefe, Postkarten)',
      '• Packpapier, Geschenkpapier (sofern es nicht mit Folie oder Glitzer versehen ist)',
      '• Papiertragetaschen',
      '• Papiertüten und -säcke (z.B. für Brot, Kekse)',
      '• Telefonbücher',
      '',
      'Wichtige Hinweise:',
      '• Verpackungen, die mit Folien oder Plastik beschichtet sind, gehören nicht in die Papiertonne!',
      '• Verschmutzte Papierabfälle (z.B. mit Essensresten) gehören in den Restmüll!',
      '• Papierverpackungen mit schädlichen Chemikalien (z.B. ölgetränkte Kartons) sollten ebenfalls vermieden werden.',
    ];
  }
}
