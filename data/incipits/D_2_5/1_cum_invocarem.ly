\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 r8 a' a a
    a4 a r2
    R1*2
    r4 h ais a
    a g fis8 fis fis fis
    e4 e fis e
    e4. e8 dis4 e
    e dis e r
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 r8 e e e
    e4 e r2
    R1
    r2 r4 e
    dis d cis c
    h2 h8 h d d
    e4 e dis h
    h a a g8 a
    fis2 e4 r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 r8 c' c c
    c4 c r2
    R1*3
    r2 r4 h
    ais a a g
    c4. c8 fis,4 e
    h'2~ h8 h' e,-! h16 d!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 r8 c' c c
    c4 c r2
    R1*3
    r2 r4 h
    ais a a g
    c4. c8 fis,4 e
    h'2~ h4 r8 h~
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r8 c'^\tutti c c
    c4 c r h8\p h
    a4 h8 h g4 g8 h
    c h16 h h8[ a] h4 r
    R1
    r2 r4 h\f
    ais a a g
    c8. c16 c8 c fis,4 e
    h'2 h4 r
  }
}

SopranoLyrics = \lyricmode {
  Cum in -- vo --
  ca -- rem ex -- au --
  di -- vit me De -- us iu --
  sti -- ti -- ae me -- ae,

  in
  tri -- bu -- la -- ti --
  o -- ne di -- la -- ta -- sti
  mi -- hi.
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r8 a'^\tutti a a
    a4 a r g8\p g
    fis4 fis8 fis fis4 e8 fis
    g fis16 fis e4 \hA fis r
    r h\f ais a
    a g fis8 fis fis fis
    e4 e fis e
    e4. e8 dis4 e
    e dis e r
  }
}

AltoLyrics = \lyricmode {
  Cum in -- vo --
  ca -- rem ex -- au --
  di -- vit me De -- us iu --
  sti -- ti -- ae me -- ae,
  in tri -- bu --
  la -- ti -- o -- ne di -- la --
  ta -- sti mi -- hi,
  di -- la -- ta -- sti
  mi -- _ hi.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r8 e^\tutti e e
    e4 e r h8\p h
    c4 h8 h h4 h8 h
    g d'!16 d e4 dis e\f
    dis d cis c
    h2 h8 h d d
    e4 e dis h
    h a a g8[ a]
    fis2 e4 r
  }
}

TenoreLyrics = \lyricmode {
  Cum in -- vo --
  ca -- rem ex -- au --
  di -- vit me De -- us iu --
  sti -- ti -- ae me -- ae, in
  tri -- bu -- la -- ti --
  o -- ne, in tri -- bu --
  la -- ti -- o -- ne
  di -- la -- ta -- sti
  mi -- hi.
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r8 a^\tutti c e a2~
    a4 a r e8\p e
    e4 dis8 dis e4 e8 dis
    e d16 d c4 h r
    R1
    r4 e\f dis d
    cis c h e
    a,4. a8 h4 h
    h2 e,4 r
  }
}

BassoLyrics = \lyricmode {
  Cum in -- vo -- ca --
  rem ex -- au --
  di -- vit me De -- us iu --
  sti -- ti -- ae me -- ae,

  in tri -- bu --
  la -- ti -- o -- ne
  di -- la -- ta -- sti
  mi -- hi.
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    r8 a-\tutti c e a2
    a r4 e~\p
    e dis e4. dis8
    e d c4 h \clef tenor e'\f
    dis d cis c
    h \clef bass e, dis d
    cis c h e
    a,2 h
    h e,4 r8 gis'-\solo
  }
}

BassFigures = \figuremode {
  r8 <1> q q q4 <5 3>
  <\t \t>1
  <4 2\+>4 <6> <9\\> <8>8 <6>
  <6> <6 _+> <7> <6> <_+>4 <1>
  q <6> <6\\> <6>
  <7>2 <6>4 <\t>
  <6\\> <6> <7 _+>2
  <9>4 <8> <7 _+> <6 4>
  <5\+ \t> <\t _+> r4. <6>16 <5>
}

\score { %\articulate
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
