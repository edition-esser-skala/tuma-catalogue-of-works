\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 3/4 \autoBeamOff \tempoMarkup "Andante"
    d'2.~
    d4 c a
    b2.
    a4 d2~
    d8[ e] cis2
    r4 d2~
    d4 c! a
    b2.
  }
}

SopranoLyrics = \lyricmode {
  San --
  _ _
  _
  ctus, san --
  ctus,
  san --
  _ _
  \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 3/4 \autoBeamOff \tempoMarkup "Andante"
    f2.
    e
    f4 g2
    f2.
    e
    d4 r r
    e2.
    f4 g2
  }
}

AltoLyrics = \lyricmode {
  San --
  ctus,
  san -- _
  ctus,
  san --
  ctus,
  san --
  ctus, "san -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 3/4 \autoBeamOff \tempoMarkup "Andante"
    R2.
    a2 c4
    d e2~
    e4 d a
    b a2
    a4 r r
    a2 c4
    d e2
  }
}

TenoreLyrics = \lyricmode {
  San -- ctus, %2
  san -- _
  _ _
  ctus, san --
  ctus,
  san -- ctus,
  san -- \hy
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 3/4 \autoBeamOff \tempoMarkup "Andante"
    R2.
    a'2.~
    a4 g e
    f b f
    g a a,
    d r r
    a'2.~
    a4 g e
  }
}

BassoLyrics = \lyricmode {
  San --
  _ _
  _ _ _
  _ _ _
  ctus,
  san --
  _ \hy
}

Organo = {
  \relative c {
    \clef bass
    \key d \minor \time 3/4 \tempoMarkup "Andante"
    d4 f d
    a'2.~
    a4 g e
    f b f
    g a a,
    d2 r4
    a'2.~
    a4 g e
  }
}

BassFigures = \figuremode {
  r2.
  <5 4>4 <\t 3>2
  <4 2> <\t>4
  <7> q <6>
  <6 5> <_+>2
  r2.
  <5 4>4 <\t 3>2
  <4 2>2 <\t>4
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "vla" "trb 2" }
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
