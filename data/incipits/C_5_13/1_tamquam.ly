\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    cis'2. cis4
    d2 c4 b
    a2 d~
    d cis
    d f
    e1
    d2 f
    e4. e8 f4 f
    e4. e8 e2
  }
}

SopranoLyrics = \lyricmode {
  Tam -- quam
  ad la -- _
  tro -- _
  _
  nem ex --
  is --
  tis cum
  gla -- di -- is et
  fu -- sti -- bus
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    e2. e4
    f2 g
    f1
    g
    f2 a
    a1
    a2 a
    a4. a8 a4 a
    a4. a8 a2
  }
}

AltoLyrics = \lyricmode {
  Tam -- quam
  ad la --
  tro --
  _
  nem ex --
  is --
  tis cum
  gla -- di -- is et
  fu -- sti -- bus
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    a2. a4
    a2 g
    a1
    g
    a2 d
    d cis
    d d
    cis4. cis8 d4 d
    cis4. cis8 cis2
  }
}

TenoreLyrics = \lyricmode {
  Tam -- quam
  ad la --
  tro --
  _
  nem ex --
  is -- _
  tis cum
  gla -- di -- is et
  fu -- sti -- bus
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    a2. a4
    d2 e
    f1
    e
    d2. d4
    a'2 g
    f d
    a'4. a8 f4 d
    a'4. a,8 a2
  }
}

BassoLyrics = \lyricmode {
  Tam -- quam
  ad la --
  tro --
  _
  nem ex --
  is -- _
  tis cum
  gla -- di -- is et
  fu -- sti -- bus
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato"
    a2. a4
    d2 e
    f1
    e
    d2. d4
    a'2 g
    f d
    a'4. a8 f4 d
    a'4. a,8 a2
  }
}

BassFigures = \figuremode {
  <_+>1
  r2 <6>4 <5>
  <5>2 <6>
  <7> <6\\>
  r1
  <4>2 <4\+>
  <6>1
  <_+>
  q
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
