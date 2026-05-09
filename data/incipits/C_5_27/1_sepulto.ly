\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    r2 e
    f e
    f2. f4
    e e e'2~
    e4 d c2~
    c4 h a2~
    a4 h c2
    c4 h a2
    h4 h e h
  }
}

SopranoLyrics = \lyricmode {
  Se --
  pul -- to
  Do -- mi --
  no, si -- gna --
  _ _
  _ _
  tum est
  mo -- nu -- men --
  tum, vol -- ven -- tes
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    r2 cis
    d cis
    d2. d4
    cis2 r4 a'
    e2. e4
    f1~
    f2 a4 a
    a1
    gis2 r
  }
}

AltoLyrics = \lyricmode {
  Se --
  pul -- to
  Do -- mi --
  no, si --
  gna -- tum
  est __
  mo -- nu --
  men --
  tum,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    r2 a
    a a
    a2. a4
    a2 r4 c!
    c2 a4 h
    c2. cis4
    d2 e~
    e d
    e r
  }
}

TenoreLyrics = \lyricmode {
  Se --
  pul -- to
  Do -- mi --
  no, si --
  gna -- tum est
  mo -- nu --
  men -- _
  _
  tum,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    r2 a
    a a
    a2. a4
    a2 r4 a
    a'2. g4
    f2. e4
    d2 c4 c
    f1
    e
  }
}

BassoLyrics = \lyricmode {
  Se --
  pul -- to
  Do -- mi --
  no, si --
  gna -- _
  _ tum
  est mo -- nu --
  men --
  tum,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato"
    r2 a
    a1
    a
    a2 r4 a
    a'2. g4
    f2. e4
    d2 c
    f1
    e
  }
}

BassFigures = \figuremode {
  r2 <5 _+>
  <6 4> <5 _+>
  <6 4>1
  r2. <_!>4
  r1
  r2. <6\\>4
  <5> <6> q2
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
