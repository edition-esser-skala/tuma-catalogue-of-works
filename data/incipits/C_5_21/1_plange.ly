\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d'2. d4
    e2. e4
    d2 d4 h
    h2 ais
    r cis4 cis
    cis1
    c2 c
    h h
    r e
    e1
  }
}

SopranoLyrics = \lyricmode {
  Plan -- ge
  qua -- si
  vir -- go plebs
  me -- a,
  u -- lu --
  la --
  te pa --
  sto -- res
  in
  "ci -"
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    fis2. fis4
    g2. g4
    fis2 fis4 e
    fis2 fis
    r ais4 ais
    ais1
    a2 a
    a g
    r g
    g2. g4
  }
}

AltoLyrics = \lyricmode {
  Plan -- ge
  qua -- si
  vir -- go plebs
  me -- a,
  u -- lu --
  la --
  te pa --
  sto -- res
  in
  ci -- "ne -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d4 d d d
    cis2 cis4 cis
    d2 h
    cis cis4 cis
    fis1~
    fis
    fis2 fis
    fis e
    r h
    a1
  }
}

TenoreLyrics = \lyricmode {
  Plan -- ge qua -- si
  vir -- go plebs
  me -- _
  a, u -- lu --
  la --

  te pa --
  sto -- res
  in
  "ci -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    h'2. h4
    ais2. ais4
    h2 h4 g
    fis2 fis
    r fis4 fis
    e1
    dis2 dis
    e e
    r e
    cis2. cis4
  }
}

BassoLyrics = \lyricmode {
  Plan -- ge
  qua -- si
  vir -- go plebs
  me -- a,
  u -- lu --
  la --
  te pa --
  sto -- res
  in
  ci -- "ne -"
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key h \minor \time 2/2 \tempoMarkup "Moderato"
    h'2. h4
    ais1
    h2. g4
    fis1
    r2 fis
    e1
    dis
    e
    r2 e
    cis1
  }
}

BassFigures = \figuremode {
  r1
  <7>
  t
  <4>2 <_+>
  r1
  <4\+ 2>
  <7! 5>
  <4 9>2 <3 8>
  r1
  <6 5>
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
