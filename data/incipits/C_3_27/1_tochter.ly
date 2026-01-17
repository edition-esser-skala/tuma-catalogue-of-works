\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 3/8 \tempoMarkup "Andante"
    a'4.
    h
    cis16( e d cis h a)
    fis'8 a, gis
    a( e) h'-! \gotoBar "31"
    a4.\p
    h
    cis16( e d cis h a)
    fis'8 a, gis
    a( e) h'-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 3/8 \tempoMarkup "Andante"
    a'4.
    h
    cis16( e d cis h a)
    fis'8 a, gis
    a( e) h'-! \gotoBar "31"
    a4.\p
    gis4 e8
    a4 e'8
    d cis h
    cis-! cis16( a gis e)
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key a \major \time 3/8 \tempoMarkup "Andante"
    a'4.
    gis4 e8
    a4 e8
    d cis h
    cis e <e gis,> \gotoBar "31"
    r8 a,\p cis
    e e, gis
    a h cis
    d e e,
    a4.
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \major \time 3/8 \tempoMarkup "Andante" \autoBeamOff
    R4.*5 \gotoBar "31"
    a'4.
    h
    cis16[ e] d[ cis h a]
    fis'8 a,[ gis]
    a([ e) h']-!
  }
}

SopranoLyricsA = \lyricmode {
  Toch --
  ter
  Si -- on __
  ſey er --
  freyt, __
}

SopranoLyricsB = \lyricmode {
  Got --
  tes
  ein -- ge --
  bohr -- ner
  Sohn __
}

Organo = {
  \relative c {
    \clef bass
    \key a \major \time 3/8 \tempoMarkup "Andante"
    r8 a\f cis
    e e, gis
    a h cis
    d e e,
    a4. \gotoBar "31"
    r8 a\p cis
    e e, gis
    a h cis
    d e e,
    a4.
  }
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyricsA
      \new Lyrics \lyricsto Soprano \SopranoLyricsB
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
  >>
}
