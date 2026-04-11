\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    e1
    e2 e
    f f
    d r
    a' h
    c d
    e d4 c
    h2 h
    c h
    c h
    a r
    r h
  }
}

SopranoLyrics = \lyricmode {
  Te --
  ne -- brae
  fa -- ctae
  sunt
  dum cru --
  ci -- fi --
  xis -- _ _
  sent Je --
  sum Ju --
  dae -- _
  i:
  et
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    c1
    c2 c
    d1~
    d2 d
    e r
    a gis
    a a
    gis1
    e2 e
    e e
    e d
    e1
  }
}

AltoLyrics = \lyricmode {
  Te --
  ne -- brae
  fa --
  ctae
  sunt
  dum cru --
  ci -- fi --
  xis --
  sent Je --
  sum Ju --
  dae -- _
  i:
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    a1
    a2 a
    a1~
    a2 a
    c r
    e d
    c f
    e1
    e2 h
    a h
    c h4 a
    gis1
  }
}

TenoreLyrics = \lyricmode {
  Te --
  ne -- brae
  fa --
  ctae
  sunt
  dum cru --
  ci -- fi --
  xis --
  sent Je --
  sum Ju --
  dae -- _ _
  i:
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    a1
    a2 a
    d1~
    d2 d
    a r
    a h
    c d
    e fis4 gis
    a2 gis
    a g
    f!1
    e
  }
}

BassoLyrics = \lyricmode {
  Te --
  ne -- brae
  fa --
  ctae
  sunt
  dum cru --
  ci -- fi --
  xis -- _ _
  sent Je --
  sum Ju --
  dae --
  i:
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Andante"
    a1
    a2 a
    d1~
    d2 d
    a r
    a h
    c d
    e fis4 gis
    a2 gis
    a g
    f!1
    e
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  r2 <6\\>
  <6>1
  <_+>
  r1
  r2 <6>
  <7> <6>
  <_+>1
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
