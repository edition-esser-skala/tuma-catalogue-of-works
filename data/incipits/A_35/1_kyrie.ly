\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    g'8-\solo g g r a a a r
    fis fis fis r g8.-\tutti g16 g8 r
    e8. e16 e8 r fis8. fis16 fis8 fis
    d d r a' gis4. a16 h
    e,4 r8 h' ais4. gis8
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    h8-\solo h h r c c c r
    fis, fis h r h8.-\tutti h16 h8 r
    c8. c16 c8 r a8. a16 a8 a
    h16 a h8 r a h2
    c4 r8 h cis2
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    e'8\f e e16 h'\p g( a32 h) c,8\f c c16 c'\p a( h32 c)
    h,8\f h h16 a' fis( g32 a) g8 g, r16 h' g( a32 h)
    c,4 r16 c' a( h32 c) fis,4 r16 a fis( g32 a)
    h,8 g d'4~ d8 c16 h e8 d
    c a e'4~ e8 d16 cis fis8 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    h'8\f h h16 h'\p g( a32 h) a,8\f a a16 c'\p a( h32 c)
    a,8\f a a16 a' fis( g32 a) g8 e, r16 h'' g( a32 h)
    c,4 r16 c' a( h32 c) fis,4 r16 a fis( g32 a)
    h,4 r8 a gis4. a16( h)
    e,4 r8 h' ais4. gis8
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r2 e'8.^\tutti e16 e8 r
    e8. e16 c8 r c4 c8 c
    h g d'4. c16[ h] e8[ d]
    c a e'4. d16[ cis] fis8[ e]
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e e -- le -- i --
  son, e -- lei -- _ _
  son, e -- lei -- _ \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r2 g'8.^\tutti g16 g8 r
    e8. e16 e8 r fis8. fis16 fis8 fis
    d d r a' gis4. a16[ h]
    e,4 r8 h' ais4. gis8
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e, Ky -- ri -- e e --
  lei -- son, e -- lei -- _
  son, e -- lei -- \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r2 h8.^\tutti h16 h8 r
    c8. c16 c8 r a8. a16 a8 a
    h16[ a] h8 r a h2
    c4 r8 h cis2
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e, Ky -- ri -- e e --
  lei -- son, e -- lei --
  son, e -- "lei -"
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    r2 e8.^\tutti e16 e8 r
    a8. a16 a8 r d,8. d16 d8 d
    g g, r f' e4 gis
    a r8 g fis4 ais
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e, Ky -- ri -- e e --
  lei -- son, e -- lei -- _
  son, e -- lei -- \hy
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    e8-\solo e e r e e e r
    dis dis dis r e-\tutti e e r
    a a a r d,! d d r
    g g, r f' e4 gis
    a r8 g fis4 ais
  }
}

BassFigures = \figuremode {
  r2 <6 4>
  <6 5>1
  r2 <7>
  r4. <6>8 <7 _+>4 <6>8 <5>
  r4. <6>8 <7 _+>4 <6>8 <5>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
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
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
