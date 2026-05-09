\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    R1
    h'
    e2 e4 e
    dis h r2
    r4 h c d
    e4. e8 e2
    e4. e8 c4 c
    c2 h
    a1
    g
  }
}

SopranoLyrics = \lyricmode {
  Je --
  ru -- sa -- lem
  sur -- ge,
  et __ _ ex --
  u -- e te
  ve -- sti -- bus iu --
  cun -- di --
  ta --
  tis:
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'1
    fis2 fis4 fis
    g g r2
    r4 fis e fis
    g4. e8 e2
    g4. g8 g2
    r4 a g g
    fis2 g~
    g fis
    g1
  }
}

AltoLyrics = \lyricmode {
  Je --
  ru -- sa -- lem
  sur -- ge,
  et __ _ ex --
  u -- e te
  ve -- sti -- bus
  iu -- cun -- di --
  ta -- _
  _
  tis:
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    h1
    dis2 dis4 dis
    h h r2
    r4 dis e h
    h4. h8 h2
    c4. c8 c2~
    c4 c h a
    a2 h4 c
    d1
    d
  }
}

TenoreLyrics = \lyricmode {
  Je --
  ru -- sa -- lem
  sur -- ge,
  et __ _ ex --
  u -- e te
  ve -- sti -- bus __
  iu -- cun -- di --
  ta -- _ _
  _
  tis:
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    e1
    h'2 h4 h
    g e r2
    r4 h cis dis
    e4. e8 e2
    c!4. c8 c2
    r4 a h c
    d1~
    d
    g,
  }
}

BassoLyrics = \lyricmode {
  Je --
  ru -- sa -- lem
  sur -- ge,
  et __ _ ex --
  u -- e te
  ve -- sti -- bus
  iu -- cun -- di --
  ta --

  tis:
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato"
    e1
    h'2. h4
    g e \clef soprano e''2
    dis4 \clef bass h,, cis dis
    e1
    c!
    r4 a h c
    d1~
    d
    g,
  }
}

BassFigures = \figuremode {
  r1
  <_+>
  r
  r
  r
  r
  r
  <7 _+>2 <6 4>
  <5 4> <_ 3>
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
