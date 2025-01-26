\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 e' e2
    g16(\p c) g( f) e( g) e( c) b2\f
    a e'16(\p a) e( d) cis( e) \hA cis( a)
    g4 g'\f fis2
    a16(\p c) a( g) fis( g) \hA fis( e) dis2\f
    e8 h e2 d8( cis)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c' c2
    g'16(\p c) g( f) e( g) e( c) b2\f
    a e'16(\p a) e( d) cis( e) \hA cis( a)
    g4 e'\f dis2
    a'16(\p c) a( g) fis( g) \hA fis( e) dis4\f a~
    a g8 gis a2~
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 c'4. c8 c4
    r2 r4 b
    a a r2
    r4 e' dis dis
    r2 r4 dis
    e8 h e4 e d8[ cis]
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e
  e --
  lei -- son,
  e -- lei -- son,
  e --
  lei -- son, e -- lei -- \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 g'4. g8 g4
    r2 r4 g
    g g r2
    r4 g fis fis
    r2 r4 a
    a g8 gis a2
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e
  e --
  lei -- son,
  e -- lei -- son,
  e --
  lei -- son, e -- "lei -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 e4. e8 e4
    r2 r4 e
    e e r2
    r4 a, a a
    r2 r4 fis'
    e h8 h a2
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e
  e --
  lei -- son,
  e -- lei -- son,
  e --
  lei -- son, e -- "lei -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 c4. c8 c4
    r2 r4 c
    cis cis r2
    r4 cis c c
    r2 r4 h
    e e8 e f!2~
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e
  e --
  lei -- son,
  e -- lei -- son,
  e --
  lei -- son, e -- "lei -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c c2
    r r4 c
    cis2 r
    r4 cis c2
    r r4 h
    e e, f!2
  }
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
  >>
}
