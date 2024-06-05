\version "2.24.2"
\include "header.ly"

SopranoI = {
  \relative c' {
    \clef soprano
    \key g \dorian \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    d'1. d2
    d d1 c4 b
    c2 d c2. c4
    c1 r2 c~
    c b a1
    d c
    b a
    h\breve
  }
}

SopranoILyrics = \lyricmode {
  In -- ci --
  pit la -- _ _
  _ men -- ta -- ti --
  o Ie --
  re -- mi --
  ae __ _
  Pro -- phe --
  tae.
}

SopranoII = {
  \relative c' {
    \clef soprano
    \key g \dorian \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    b'1. b2
    b b1 a4 g
    a2 b1 a2
    a1 g
    r c~
    c2 b a a~
    a4 g g1 fis2
    g\breve
  }
}

SopranoIILyrics = \lyricmode {
  In -- ci --
  pit la -- _ _
  men -- ta -- ti --
  o __ _
  Ie --
  re -- mi -- ae __
  Pro -- phe -- _
  tae.
}

Alto = {
  \relative c' {
    \clef alto
    \key g \dorian \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    g'1. g2
    g1. es2~
    es f f2. f4
    f2 f1 e2
    d2. e4 f1~
    f f
    d d
    d\breve
  }
}

AltoLyrics = \lyricmode {
  In -- ci --
  pit la --
  men -- ta -- ti --
  o Ie -- re --
  mi -- _ _
  ae
  Pro -- phe --
  tae.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \dorian \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    g1. g2
    g1 es~
    es2 d f2. f4
    f1 c'
    g f
    d2. e4 f1
    g d
    g\breve
  }
}

TenoreLyrics = \lyricmode {
  In -- ci --
  pit la --
  men -- ta -- ti --
  o Ie --
  re -- mi --
  ae __ _ _
  Pro -- phe --
  tae.
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S 1"
        \new Voice = "SopranoI" { \dynamicUp \SopranoI }
      }
      \new Lyrics \lyricsto SopranoI \SopranoILyrics

      \new Staff {
        \set Staff.instrumentName = "S 2"
        \new Voice = "SopranoII" { \dynamicUp \SopranoII }
      }
      \new Lyrics \lyricsto SopranoII \SopranoIILyrics

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
    >>
  >>
}
