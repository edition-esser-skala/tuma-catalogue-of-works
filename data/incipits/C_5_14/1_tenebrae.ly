\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    cis'2 cis4 cis
    d1~
    d2 cis
    d a~
    a d
    c! a
    h! cis
    d d~
    d c!4 h!
    c2 c
  }
}

SopranoLyrics = \lyricmode {
  Te -- ne -- brae
  fa --
  ctae
  sunt dum __
  cru --
  ci -- fi --
  xis -- _
  sent Je --
  _ _
  sum "Ju -"
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    e2 e4 e
    f1
    g
    f2 f~
    f f
    e e
    g1
    a
    gis
    e2 e
  }
}

AltoLyrics = \lyricmode {
  Te -- ne -- brae
  fa --
  ctae
  sunt dum __
  cru --
  ci -- fi --
  xis --
  sent
  Je --
  sum "Ju -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    a2 a4 a
    a1
    g
    a
    a2 a
    a c
    d e
    a, a
    h e
    c c
  }
}

TenoreLyrics = \lyricmode {
  Te -- ne -- brae
  fa --
  ctae
  sunt
  dum cru --
  ci -- fi --
  xis -- _
  sent Je --
  sum, Je --
  sum "Ju -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "[no tempo]" \autoBeamOff
    a'2 a4 a
    f1
    e
    d
    d2 d
    a' a
    g1
    f
    e
    a2 a
  }
}

BassoLyrics = \lyricmode {
  Te -- ne -- brae
  fa --
  ctae
  sunt
  dum cru --
  ci -- fi --
  xis --
  sent
  Je --
  sum "Ju -"
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "[no tempo]"
    a'2 a4 a
    f1
    e
    d
    d2 d
    a' a
    g1
    f
    e
    a
  }
}

BassFigures = \figuremode {
  <_+>1
  <6>
  <7>2 <6\\>
  r1
  r
  r
  <5 _!>2 <6 4\+>
  <6>1
  <7 _+>2 <6>4 <5!>
  r1
}

\score {
  <<
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
