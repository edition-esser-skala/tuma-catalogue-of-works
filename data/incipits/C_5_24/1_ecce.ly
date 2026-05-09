\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    b'2 b
    h h4 h
    c2 d4 d
    d2 c
    h h
    h h
    c c4 c
    c2 h
    c1
  }
}

SopranoLyrics = \lyricmode {
  Ec -- ce
  quo -- mo -- do
  mo -- ri -- tur
  iu -- _
  stus et
  ne -- mo
  per -- ci -- pit
  cor -- _
  de,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'2 g
    g g4 g
    g2 g4 g
    g1
    g2 g
    g g
    g es4 f
    g1
    g
  }
}

AltoLyrics = \lyricmode {
  Ec -- ce
  quo -- mo -- do
  mo -- ri -- tur
  iu --
  stus et
  ne -- mo
  per -- ci -- pit
  cor --
  de,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d2 d
    d d4 d
    es2 f4 f
    es1
    d2 d
    d d
    es c4 c
    d1
    c
  }
}

TenoreLyrics = \lyricmode {
  Ec -- ce
  quo -- mo -- do
  mo -- ri -- tur
  iu --
  stus et
  ne -- mo
  per -- ci -- pit
  cor --
  de,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'2 g
    g g4 g
    es2 h4 h
    c1
    g2 g'
    f f
    es as4 as
    g1
    c,
  }
}

BassoLyrics = \lyricmode {
  Ec -- ce
  quo -- mo -- do
  mo -- ri -- tur
  iu --
  stus et
  ne -- mo
  per -- ci -- pit
  cor --
  de,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato"
    g'1
    g
    es2 h
    c1
    g2 g'
    f!1
    es2 as
    g1
    c
  }
}

BassFigures = \figuremode {
  r1
  <_!>
  <6>
  <9>2 <8>
  <_!>1
  <4! 2>
  <6>2 <5>4 <6>
  <4>2 <_!>
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
