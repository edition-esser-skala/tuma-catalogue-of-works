\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    h'2. h4
    h2 h
    c c
    h e4 e
    d c h a
    g2 fis4 e
    fis2 g
    fis1
    e
    R
  }
}

SopranoLyrics = \lyricmode {
  Te splen --
  dor et
  vir -- tus
  Pa -- tris, et
  vir -- _ tus _
  Pa -- _ _
  _ _
  _
  tris,
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    R1*2
    e2. e4
    e2 e
    g2. fis4
    e2 e4 e
    dis2 e
    e dis
    e2. g4
    g2 r
  }
}

AltoLyrics = \lyricmode {
  Te splen --
  dor et
  vir -- tus
  Pa -- tris, te
  vi -- ta
  Je -- su
  cor -- di --
  um,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    R1*6
    h2. h4
    h2 h
    c c
    h e4 e
  }
}

TenoreLyrics = \lyricmode {
  Te splen --
  dor et
  vir -- tus
  Pa -- tris, "Pa -"
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 2/2 \tempoMarkup "Allabreve" \autoBeamOff
    R1*8
    e2. e4
    e2 e
  }
}

BassoLyrics = \lyricmode {
  Te splen --
  dor et
}

Organo = {
  \relative c {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Allabreve"
    h''2.-! h4-!
    h2-! h-!
    << {
      c c
      h e4 e
      d c h a
      g2 fis4 e
    } \\ {
      e2. e4
      e2 e
      g2. fis4
      e2 e
    } >>
    \clef tenor h2. h4
    h2 h
    \clef bass e,2. e4
    e2 e
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  r
  <_+>2 <6 4>
  <5 \t> <\t _+>
  <6>1
  <5>
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
