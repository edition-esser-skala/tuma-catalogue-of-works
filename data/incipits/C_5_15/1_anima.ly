\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    a'1
    a2 a
    d1
    cis2 d
    d cis
    d2. d4
    d2 c4 h
    a2 d
    d c
    h h
    r e
  }
}

SopranoLyrics = \lyricmode {
  A --
  ni -- mam
  me --
  am di --
  le -- ctam
  tra -- di --
  di in _
  ma -- nus
  in -- i --
  quo -- rum,
  et
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    f1
    f2 f
    f g
    a f
    g g
    f2. f4
    f2 g
    a a
    gis e
    f e
    e r
  }
}

AltoLyrics = \lyricmode {
  A --
  ni -- mam
  me -- _
  am di --
  le -- ctam
  tra -- di --
  di in
  ma -- nus
  in -- i --
  quo -- _
  rum,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d1
    d2 d
    d1
    e2 a,
    h e
    a,2. a4
    a2 e'
    d d
    h c
    d1
    c
  }
}

TenoreLyrics = \lyricmode {
  A --
  ni -- mam
  me --
  am di --
  le -- ctam
  tra -- di --
  di in
  ma -- nus
  in -- i --
  quo --
  rum,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d1
    d2 d
    b'1
    a2 f
    e e
    d2. d4
    d2 e
    f e4 d
    e2 a
    a gis
    a1
  }
}

BassoLyrics = \lyricmode {
  A --
  ni -- mam
  me --
  am di --
  le -- ctam
  tra -- di --
  di in
  ma -- nus _
  in -- i --
  quo -- _
  rum,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato"
    d1
    d2 d
    b'1
    a2 f
    e e
    d2. d4
    d2 e
    f e4 d
    e2 a
    a gis
    a \clef soprano e''
  }
}

BassFigures = \figuremode {
  r1
  r
  <5>2 <6>
  <_+> <6>
  <7> <6\\>
  r1
  r2 <6>4 <5!>
  r2 <7 4 2>4 <\t \t \t>
  <7 _+>1
  <4 2!>2 <6>
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
